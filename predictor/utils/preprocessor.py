"""Preprocessing for daily news scraping, obtaining data for model training."""

import os
import dotenv
import requests
from bs4 import BeautifulSoup
import csv
import datetime as dt
import time
from fuzzywuzzy import process

dotenv.load_dotenv()
# -------------------------------#
#        Helper Functions        #
# -------------------------------#


def to_epoch(str_time):
    """Take in string time(yyyy-mm-dd) and convert to epoch time."""
    return int(dt.datetime.strptime(str_time, "%Y-%m-%d").timestamp())


def get_today_epoch():
    """Return epoch time of today's date."""
    today = dt.datetime.combine(dt.date.today(), dt.datetime.min.time())
    epoch_today_gmt = int(today.timestamp())
    return epoch_today_gmt


def get_last_weekday_epoch(epochtime):
    """Return the previous workday's date in epoch time."""
    epochtime = dt.datetime.fromtimestamp(epochtime)
    offset = max(1, (epochtime.weekday() + 6) % 7 - 3)
    timedelta = dt.timedelta(offset)
    most_recent = epochtime - timedelta
    most_recent = int(most_recent.timestamp()) - (60 * 60 * 24)
    return most_recent


def get_ticker_from_name(abbr_or_name):
    """
    Return market ticker abbreviation for given company name.

    Input: company name OR abbreviation:string
    Output: dict including symbol, name, and date accessed
    """
    r = requests.get("https://api.iextrading.com/1.0/ref-data/symbols")
    stockList = r.json()
    # Then, if we want the symbol, we can access "symbol" key.
    # If we want name, we extract "name" key.
    return process.extractOne(abbr_or_name, stockList)[0]


# -------------------------------#
#    reddit_worldnews_fetcher    #
# -------------------------------#

# Currently, I'm pulling much more than 25 headlines.
# This is so I can get more data for the model.
# Do we want to leave like this, or change back later?
# If we want to keep like this, we'll want to rename the function


class reddit_worldnews_fetcher:
    """Fetch news from external API for prediction model."""

    @staticmethod
    def top25news(start_date, end_date, company_name):
        """
        Fetch the top 25 news headlines of a given date.

        Input: Time span start_date and end_date
                Type:epochtime
        Output: A list of the givendata and top25news
                [data,new1,new2,...]
        """
        url = (
            "https://api.pushshift.io/reddit/search/submission"
            "?subreddit=worldnews"
            "&sort_type=score"
            f"&after={start_date}"
            f"&before={end_date}"
            "&sort=desc"
            "&size=25"
            "&fields=title,created_utc"
            f"&title={company_name}"
        )
        print("CALLING TOP25NEWS!")
        print(f"COMPANY_NAME: {company_name}")
        page = requests.get(url)
        print(f"PAGE: {page}")
        if page is None:
            return None
        try:
            content = page.json().get("data")
            print(f"IN TRY BLOCK. CONTENT: {content}")
            sym = get_ticker_from_name(company_name)
            print(f"IN TRY BLOCK: GETTING SYMBOL: {sym}")
            news_entry = []
            for news in content:
                news_entry.append((sym + " " + news["title"]))
            print(f"NEWS ENTRY: {news_entry}")
            return news_entry
        except:
            print(
                "in except block redditworldnewsfetcher - going to return None"
            )
            return None

    @staticmethod
    def historical_data(period1, period2=str(dt.date.today())):
        """
        Fetch the top 25 news headlines in a given time span.

        Input: time span. Format is yyyy-mm-dd.
               If leave period2 empty, period2 will be current date
        Output: Will create news.csv and store all entries there.
        """
        current_time = to_epoch(period1)
        period2 = to_epoch(period2)
        with open("news.csv", mode="w") as csv_file:
            csvwriter = csv.writer(csv_file)
            while current_time < period2:
                next_day = current_time + (60 * 60 * 24)
                top25news = reddit_worldnews_fetcher.top25news(
                    current_time, next_day
                )
                if top25news is not None:
                    csvwriter.writerow(top25news)
                time.sleep(1)  # To avoid error 429: Too Many Requests
                current_time = next_day

    @staticmethod
    def topnews_today(company_name):
        """
        Return the top news of today.

        Input: None
        Output: String of 25 top news headlines separated by spaces
                'news1 news2 news3 ...'
        """
        today_epoch = get_today_epoch()
        nextday_epoch = today_epoch + (60 * 60 * 24)
        top_news = reddit_worldnews_fetcher.top25news(
            today_epoch, nextday_epoch, company_name
        )
        print("IN TOPNEWS_TODAY LINE 139")
        print(f"TOP NEWS: {top_news}")
        return " ".join(top_news[1:])


# -------------------------------#
#          djia_fetcher          #
# -------------------------------#
class djia_fetcher:
    """Fetch DJIA historic data."""

    @staticmethod
    def get_djia_data(period1, period2, ticker):
        """
        Fetch Dow Jones Industrial Average historical data.

        Input: 2 epoch time data, from period1 to period2
        Output: A tuple of headings and the body of the table
        and will scrape Dow Jones historical data from yahoo news.
        """

        url = (
            f"https://finance.yahoo.com/quote/{ticker}/history"
            f"?period1={period1}"
            f"&period2={period2}"
            "&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true"
        )
        page = requests.get(url)
        # Parsing & Organizing Data
        headings = []  # A container to hold headings in the table
        data = []  # A container to hold the body in the table
        soup = BeautifulSoup(page.content, "lxml")
        table = soup.table
        # Read in table headings
        try:
            table_head = table.find("thead")
            table_headrows = table_head.find_all("th")
            for row in table_headrows:
                col = row.text.strip()
                headings.append(col.replace("*", ""))
            # Read in body content
            table_body = table.find("tbody")
            table_bodyrows = table_body.find_all("tr")

            for row in table_bodyrows:
                cols = row.select("td span")
                cols = [col.get_text() for col in cols]
                cols = [col.replace(",", "") for col in cols]
                for i in range(1, len(cols)):
                    cols[i] = float(cols[i])
                data.append(cols)
            return (headings, data)
        except AttributeError:
            print("AttributeError occurred. In Except block.")

    @staticmethod
    def get_djia_today_label():
        """
        Return a label telling if the DJIA goes up or down.

        Output: Binary classification label:
                1 = "goes up"
                0 = "went down or stayed the same"
        """
        today_epoch = get_today_epoch()
        last_workday = get_last_weekday_epoch(today_epoch)
        headings, data = djia_fetcher.get_djia_data(last_workday, today_epoch)
        last_workday_closed_price = data[1][4]
        today_closed_price = data[0][4]
        if today_closed_price > last_workday_closed_price:
            return 1
        else:
            return 0

    @staticmethod
    def get_djia_label(news_date, company_name):
        """
        Get sentiment label for the date of a given piece of news.

        For each piece of news this will be called.
        Input: news_date:Integer, epoch time
        Output: Tuple containing Sentiment label:
                0 -> stock went down
                1 -> stock went up
                2 -> no change (neutral)
                And company ticker
        """
        ticker = get_ticker_from_name(company_name).get("symbol")

        try:
            last_workday = get_last_weekday_epoch(news_date)
            headings, data = djia_fetcher.get_djia_data(
                last_workday, news_date, ticker
            )
            last_workday_closed_price = data[1][4]
            news_date_closed_price = data[0][4]
            if news_date_closed_price > last_workday_closed_price:
                return (1, ticker)
            elif news_date_closed_price < last_workday_closed_price:
                return (0, ticker)
            else:
                return (2, ticker)
        except (IndexError, ValueError):
            return (0, ticker)


# -------------------------------#
#    news_sentiment_analysis     #
# -------------------------------#

# Use for testing model "in production" prior to fully finishing app
# No reason we should waste this :)


def news_sentiment_analysis(keyword):
    """
    Return top25 news and Sentiment Analysis label.

    Input: keyword for the stock - company name - type:str
    Output: A list of list containing
            ['news title', 'description', 'Sentiment Analysis label']
            Sentiment Analysis label:
                0 = "negative"
                1 = "positive"
                2 = "neutral"
    """
    # Make API call to fetch top news headline

    url = f"https://newsapi.org/v2/top-headlines?q={keyword}&pageSize=25&language=en&apiKey={os.getenv('API_KEY')}"
    content = requests.get(url).json()
    articles = content.get("articles", None)
    news = []
    for (
        article
    ) in articles:  # parsing data and store the news title and description
        news.append([article.get("title"), article.get("description")])
    # Make API call to get sentiment label
    for entry in news:
        try:
            body = {"text": " ".join(entry)}
            x = requests.post(
                "https://sentim-api.herokuapp.com/api/v1/",
                json=body,
                headers={"Content-Type": "application/json"},
            )
            result = x.json()["result"][
                "type"
            ]  # parsing data and store the result
            label_dict = {"positive": 1, "negative": 0, "neutral": 2}
            entry.append(label_dict[result])
        except TypeError:
            return f"Missing one entry. Failed on {keyword}"
    return news


# print(
#     f"PRINTING REDDIT_WORLDNEWS_FETCHER RESULTS: \n {reddit_worldnews_fetcher.top25news('2020-01-01', '2021-03-01', 'Apple')} \n"
# )
# print(
#     "_________________________________________________________________________________"
# )
# test_result = reddit_worldnews_fetcher.top25news(
#     "2021-01-01", "2021-01-02", "Apple"
# )[
#     0
# ]  # access just the first returned item
# news_date = test_result[1]  # access the date from tuple
#
# print(
#     f"GET ONE DATA FROM REDDIT_WORLDNEWS_FETCHER: {test_result}, {news_date}"
# )
#
# print(
#     f"PRINTING DJIA_FETCHER RESULTS: \n {djia_fetcher.get_djia_label(news_date, 'Apple')} \n"
# )
# print(
#     "_________________________________________________________________________________"
# )
# print(
#     f"PRINTING Sentiment_Analysis RESULTS: \n {news_sentiment_analysis('apple')} \n"
# )

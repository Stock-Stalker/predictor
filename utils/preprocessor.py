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
            "&fields=title"
            f"&title={company_name}"
        )
        page = requests.get(url)
        if page is None:
            return None
        try:
            content = page.json().get("data")
            # sym = get_ticker_from_name(company_name).symbol
            # print(f"IN TRY BLOCK: GETTING SYMBOL: {sym}")
            news_entry = []
            for news in content:
                news_entry.append(news["title"])
            return news_entry
        except (ValueError, KeyError, IndexError, NameError, TypeError):
            print("in except block redditworldnewsfetcher")

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
    def topnews_today(symbol):
        """
        Return the top news of today.

        Input: None
        Output: String of 25 top news headlines separated by spaces
                'news1 news2 news3 ...'
        """
        company_name = get_ticker_from_name(symbol).get("name").lower()
        print(f"company_name: ${company_name}")
        today_epoch = get_today_epoch()
        nextday_epoch = today_epoch + (60 * 60 * 24)
        top_news = reddit_worldnews_fetcher.top25news(
            today_epoch, nextday_epoch, company_name
        )
        return top_news


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
            "&interval=1d&filter=history"
            "&frequency=1d&includeAdjustedClose=true"
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
#        fetch_top_tweets        #
# -------------------------------#


def fetch_top_tweets(symbol):
    """
    Return top25 tweets of the day that mention the symbol.

    Input: keyword for the stock - company name - type:str
    Output: String of 25 top tweets separated by spaces
            'tweet1 tweet2 tweet3 ...'
    """
    bearer_token = os.environ.get("TWITTER_BEARER_TOKEN")

    url = (
        "https://api.twitter.com/2/tweets/search/recent?"
        f"query={symbol} lang:en&"
        f"start_time={dt.datetime.today().strftime('%Y-%m-%d')}T00:00:00.000Z&"
        "max_results=25"
    )
    headers = {"Authorization": f"Bearer {bearer_token}"}
    response = requests.request("GET", url, headers=headers).json()
    tweets = []

    try:
        for entry in response.get("data"):
            tweets.append(entry["text"].replace("\n", ""))

        return " ".join(tweets).replace("[^A-Za-z0-9]+", "").lower()
    except KeyError:
        print("Something went wrong")
"""Preprocessing for daily news scraping, obtaining data for model training."""
import os
import requests
from news_fetchers import top25news
import datetime as dt
from fuzzywuzzy import process

# -------------------------------#
#    get_today_epoch             #
# -------------------------------#


def get_today_epoch():
    """Return epoch time of today's date."""
    today = dt.datetime.combine(dt.date.today(), dt.datetime.min.time())
    epoch_today_gmt = int(today.timestamp())
    return epoch_today_gmt


# -------------------------------#
#    get_ticker_from_name        #
# -------------------------------#


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
    top_news = top25news(today_epoch, nextday_epoch, company_name)
    return top_news


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

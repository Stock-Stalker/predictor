"""Preprocessing for daily news scraping, obtaining data for model training."""

import os
import requests


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
    top_news = reddit_worldnews_fetcher.top25news(
        today_epoch, nextday_epoch, company_name
    )
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

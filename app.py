"""Predictor."""
from flask import Flask, jsonify
from utils.predict import predictor
from utils.preprocessor import fetch_top_tweets, topnews_today

app = Flask(__name__)


@app.route("/predictor/<symbol>")
def home(symbol):
    """
    Return prediction for given stock symbol based on day's news.

    Args:
        symbol:String, caps, ticker symbol for company.
    Returns: prediction
        One of:
            "stock will go up"
            "stock will go down"
            "stock will hold"
    """
    # Create list of symbols
    symbols = symbol.split(",")
    # Initialize headlines array and predictions object
    headlines = []
    predictions = {}
    # For each symbol,
    # we want to check for daily headlines and return a prediction
    for s in symbols:
        # Give our predictor a "bag of words"
        headlines = " ".join(topnews_today(s)).lower()
        headlines = headlines + fetch_top_tweets(s)
        print("PRINTING HEADLINES", headlines)
        # If there are no headlines for the day, return a neutral prediction
        if not headlines:
            print("IN IF NOT HEADLINES BLOCK")
            pred = 2
            predictions[s] = pred
        else:
            # Return the predictor's prediction
            pred = predictor(s, headlines)
            predictions[s] = pred
    return jsonify(predictions), 200


if __name__ == "__main__":
    app.run()

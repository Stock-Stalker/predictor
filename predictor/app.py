"""Predictor."""
from flask import Flask, jsonify
from utils.predict import predictor
from utils.preprocessor import reddit_worldnews_fetcher

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
    headlines = reddit_worldnews_fetcher.topnews_today(symbol)
    # If there are no headlines for the day, return a neutral prediction
    if len(headlines) < 1:
        print(f"LINE 24 - HEADLINES EMPTY")
        predictions = 2
        return jsonify({"data": predictions})

    # Otherwise, append each prediction to our predictions array and return
    predictions = []
    for headline in headlines:
        pred = predictor(symbol, headline)
        predictions.append(pred)
    return jsonify({"data": predictions}), 200


if __name__ == "__main__":
    app.run()

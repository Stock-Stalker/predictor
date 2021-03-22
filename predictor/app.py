"""Predictor."""
from flask import Flask, jsonify, request
from utils.predict import predictor
from utils.preprocessor import reddit_worldnews_fetcher

app = Flask(__name__)


@app.route("/predictor")
def home():
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
    arguments = request.args["symbol"]
    # print(f"\nSYMBOL: {symbol}\n")
    # Otherwise, append each prediction to our predictions array and return
    headlines = []
    predictions = []
    for symbol in request.args:
        headlines = reddit_worldnews_fetcher.topnews_today(symbol)
        # If there are no headlines for the day, return a neutral prediction
        if len(headlines) < 1:
            print(f"LINE 24 - HEADLINES EMPTY")
            pred = 2
            predictions.append((pred, symbol))
        else:
            for headline in headlines:
                pred = predictor(symbol, headline)
                predictions.append((pred, symbol))
    return jsonify({"data": predictions}), 200


if __name__ == "__main__":
    app.run()

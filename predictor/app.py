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
    print("PRINTING REQUEST.ARGS[symbol]", request.args["symbol"])
    headlines = []
    predictions = {}
    print("FLASK PREDICTIONS 1 ", predictions)
    print("PRINTING ARGUMENTS:", arguments)
    for symbol in arguments:
        print(f"PRINTING SYMBOL: {symbol}")
        headlines = " ".join(
            reddit_worldnews_fetcher.topnews_today(symbol)
        ).lower()
        # If there are no headlines for the day, return a neutral prediction
        if len(headlines) < 1:
            print(f"LINE 24 - HEADLINES EMPTY")
            pred = 2
            predictions[symbol] = pred
        else:
            pred = predictor(symbol, headlines)
            predictions[symbol] = pred
    print("FLASK PREDICTIONS 2 ", predictions)
    return jsonify(predictions), 200


if __name__ == "__main__":
    app.run()

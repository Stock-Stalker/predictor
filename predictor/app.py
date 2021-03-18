"""Predictor."""
from flask import Flask, jsonify
from utils.predict import predictor
from utils.preprocessor import reddit_worldnews_fetcher

app = Flask(__name__)


@app.route("/predictor/<company_name>")
def home(company_name):
    """Return home message"""
    headlines = reddit_worldnews_fetcher.topnews_today(company_name)
    prediction = predictor()
    return jsonify({"prediction": prediction}), 200


if __name__ == "__main__":
    app.run()

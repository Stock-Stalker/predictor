"""Predictor."""
from flask import Flask, jsonify
from utils.predict import predictor
from utils.preprocessor import reddit_worldnews_fetcher

app = Flask(__name__)


@app.route("/predictor")
def home():
    """Return home message"""
    prediction = predictor(
        ["aapl apple to give away free iphones for a year"]
    )
    return jsonify({"prediction": prediction}), 200


if __name__ == "__main__":
    app.run()

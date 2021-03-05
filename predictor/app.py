"""Predictor."""
from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    """Return home message"""
    return jsonify({"message": "This is Predictor"}), 200


if __name__ == "__main__":
    app.run()

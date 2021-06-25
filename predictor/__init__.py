"""Predictor package."""
from flask import Flask
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

from . import routes  # noqa: E402,F401

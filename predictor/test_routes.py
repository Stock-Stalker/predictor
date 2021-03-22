"""Test utils/preprocessor.py functions."""
import pytest
from app import app


def test_predictor():
    """Assert string time is converted to epoch time."""
    res = app.test_client().get("/predictor/aapl")
    assert res.status_code == 200
    expected_json = {"predictions": 2}
    result_json = res.get_data()
    assert expected_json == result_json

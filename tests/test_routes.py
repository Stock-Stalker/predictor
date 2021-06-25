
"""Test predictor/routes.py functions."""
import json
import unittest
from app import app


class TestRoutes(unittest.TestCase):
    """Routes test class."""

    def test_prediction(self):
        """Test prediction route."""
        symbol = "AAPL"

        res = app.test_client().get("/predictor/{0}".format(symbol))
        result_json = json.loads(res.get_data().decode("utf-8"))

        self.assertIsInstance(result_json, dict)
        self.assertEqual(res.status_code, 200)

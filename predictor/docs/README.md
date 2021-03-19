# StockStalker - Predictor

> The predictive model & preprocessor powering StockStalker

Base url: `http://stockstalker.tk/predictor/`

## Get a Prediction

**Request**:

url: '/:symbol'

In order to make a request to predictor, you must specify which company's stock you'd like to predict.

You can pass through the stock's ticker symbol (i.e: AAPL for Apple, or AMZN for Amazon).

**Response**:

The predictor will scrape headlines for the day, and make predictions based on the headlines. It will then return a list of integers denoting its predictions

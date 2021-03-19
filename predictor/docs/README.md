# StockStalker - Predictor

> The predictive model & preprocessor powering StockStalker

<<<<<<< HEAD
Base url: `http://stockstalker.tk/predictor/`

## Get a Prediction

**Request**:

url: '/:symbol'

In order to make a request to predictor, you must specify which company's stock you'd like to predict.

You can pass through the stock's ticker symbol (i.e: AAPL for Apple, or AMZN for Amazon).

**Response**:

The predictor will scrape headlines for the day, and make predictions based on the headlines. It will then return a list of integers denoting its predictions
=======
**Request**:

To receive a prediction whether or not a stock is estimated to go up or down, you must make a request to predictor.

Base url: `http://stockstalker.tk/predictor`

You will also need to ensure that you pass a stock ticker symbol through the query parameters.

This will look like:

url: `http://stockstalker.tk/predictor/AAPL`

OR

url: `http://stockstalker.tk/predictor/aapl`

**Response**:

The predictor will, behind the scenes, scrape and cache top daily headlines for the company that you specify. It will return a list of predictions:

```json
{
  "predictions": [
    0,
    1,
    1,
    1
  ]
}
```

Types:

- predictions: Array/list of integers
  - integer options:
    - 0 -> stock is predicted to decrease (negative)
    - 1 -> stock is predicted to increase (positive)
    - 2 -> stock is predicted to hold (neutral)

In the event that there is no news on a given day for the company you provide (for example, if today no one has published any articles containing keywords about "Apple" or "AAPL"), the predictor will always return ```2```. This corresponds to a neutral prediction. The reasoning for this is that if we do not have data on a given day, we are unable to make a confident prediction as to the behavior of the stock.
>>>>>>> 6f715a686043590b0b2fc9bafe19f23eac0599c5

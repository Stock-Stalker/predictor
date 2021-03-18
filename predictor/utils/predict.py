"""Read in our saved model, and call predict to return a prediction."""
import tensorflow as tf
from tensorflow import keras


def predictor(symbol, headline):
    """
    Predict whether a stock will increase or decrease.

    Args
        symbol:String - ticker symbol for stock.
        headline:String - the headline to predict on.

    Returns
        Classification label:Int
        1 -> Stock will go up
        0 -> Stock will go down
        2 -> Stock will hold
    """
    model = keras.models.load_model("saved_model/my_model")
    print(f"model: {model}")
    return model

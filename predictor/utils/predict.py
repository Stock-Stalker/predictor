"""Read in our saved model, and call predict to return a prediction."""
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.preprocessing.sequence import pad_sequences
import numpy as np
import pickle

max_features = 2000


def predictor(symbol, headline):
    """
    Predict whether a stock will increase or decrease.

    Args
        symbol:String - ticker symbol for stock.
        headlines:Arr - 25 top headlines based on company keywords

    Returns
        Classification label:Int
        1 -> Stock will go up
        0 -> Stock will go down
        2 -> Stock will hold
    """
    model = keras.models.load_model("saved_model/my_model")

    # Preprocess our symbol and headlines so the model can accept the tokenization properly
    try:
        headline = [f"{symbol} {headline}"]

        print(f"Headlines after preprocessing: {headline}")
        # Tokenize our text to sequences the model understands
        with open("tokenizer.pickle", "rb") as handle:
            tokenizer = pickle.load(handle)
        seq = tokenizer.texts_to_sequences(headline)
        padded = pad_sequences(seq)
        prediction = model.predict(padded)
        print(f"prediction: {prediction}")
        labels = [0, 1, 2]
        # print(labels[np.argmax(prediction)])
        return labels[np.argmax(prediction)]
    except ValueError:
        counter += 1
        print(f"ValueError occurred for {counter} entry")

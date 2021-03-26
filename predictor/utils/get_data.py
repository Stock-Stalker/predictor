"""Obtain data for model training."""
from preprocessor import reddit_worldnews_fetcher, djia_fetcher
import pandas as pd

# import concurrent.futures
import csv
import time


djia_companies = [
    "3M",
    "American Express",
    "Amgen",
    "Apple",
    "Boeing",
    "Caterpillar",
    "Chevron",
    "Cisco Systems",
    "Coca-Cola",
    "Disney",
    "Dow",
    "Goldman Sachs",
    "Home Depot",
    "Honeywell",
    "IBM",
    "Intel",
    "Johnson & Johnson",
    "JP Morgan Chase",
    "McDonalds",
    "Merck",
    "Microsoft",
    "Nike",
    "Procter & Gamble",
    "Salesforce",
    "Travelers",
    "UnitedHealth",
    "Visa",
    "Walgreens",
    "Walmart",
]

# Read in nasdaq symbols to loop through and get data for these companies
nasdaq = pd.read_csv("./nasdaqlisted.csv", header=0, usecols=[1])

# When converting the series to a list,
# Pandas gives us a "created on" thing at the last element we don't want
# nasdaq.apply(
#     (lambda x: str(x).partition("-")[0] for x in nasdaq["Security Name"])
# )
nasdaq_names = []

for name in list(nasdaq["companyName"]):
    name = name.partition(" - ")[0]
    name = (
        name.replace("[^a-zA-Z]", " ")
        .replace("Inc.", "")
        .replace("Inc", "")
        .replace("Corp", "")
        .replace("Corporation", "")
        .replace("Ltd.", "")
        .replace("Limited", "")
        .strip()
    )
    nasdaq_names.append(name)

# print(f"nasdaq_syms: {nasdaq_names}")

t1 = time.perf_counter()


def get_data():
    """
    Call news_sentiment_analysis in a loop.

    Input:None
    Output:csv containing labels:
        Ticker:Company name, string
        Headlines: Titles, descriptions, strings
        Sentiment: 0, 1, or 2
    """
    fieldnames = ["Label", "Ticker", "Headline"]
    counter = 0
    with open("nasdaq.csv", mode="a") as data:
        data_writer = csv.DictWriter(data, fieldnames=fieldnames)
        # data_writer.writeheader()
        for company_name in nasdaq_names[1530:]:
            news = reddit_worldnews_fetcher.top25news(
                "2000-01-01", "2021-03-13", company_name
            )
            try:
                for n in news:
                    # Clean up data a bit
                    headline = n[0].replace(",", "")
                    date = n[1]
                    label = djia_fetcher.get_djia_label(date, company_name)
                    data_writer.writerow(
                        {
                            "Label": label[0],
                            "Ticker": label[1],
                            "Headline": headline,
                        }
                    )
            except TypeError:
                counter += 1
                print("DataError: ", counter)

    return


print("CALLING GET DATA")
get_data()
print("GET DATA FINISHED")
# if __name__ == "__main__":
#     with concurrent.futures.ProcessPoolExecutor() as executor:
#         executor.map(get_data, nasdaq_names)

t2 = time.perf_counter()
print(f"Finished in {t2 - t1} seconds")

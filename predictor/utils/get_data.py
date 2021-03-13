"""Obtain data for model training."""
from preprocessor import news_sentiment_analysis
import csv

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

# TODO: modify get_data() to work with modified
# reddit_worldnews_fetcher & get_djia_today_label


def get_data():
    """
    Call news_sentiment_analysis in a loop.

    Input:None
    Output:csv containing labels:
        Ticker:Company name, string
        Headlines: Titles, descriptions, strings
        Sentiment: 0, 1, or 2
    """
    fieldnames = ["Label", "Ticker", "Headline", "Description"]
    with open("djia_news.csv", mode="w") as data:
        data_writer = csv.DictWriter(data, fieldnames=fieldnames)
        data_writer.writeheader()
        for company_name in djia_companies:
            news = news_sentiment_analysis(company_name)
            for n in news:
                if len(n) < 3:
                    continue
                # Clean up data a bit
                headline = n[0].replace(",", "")
                description = n[1].replace(",", "")
                data_writer.writerow(
                    {
                        "Label": n[2],
                        "Ticker": company_name,
                        "Headline": headline,
                        "Description": description,
                    }
                )

    return


get_data()
print("CALLED GET_DATA")

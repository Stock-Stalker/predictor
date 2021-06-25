"""Get the top 25 headlines from Reddit worldnews."""
import requests


def top25news(start_date, end_date, company_name):
    """
    Fetch the top n news headlines of a given date.
    Input: Start_date, end_date -> this denotes the time frame within
           which you'd like to query results. Bear in mind that Reddit
           has only existed for about a decade or so. Type: epochtime
           n -> positive number, indicates how many records to
           return within a given query. Type: Integer
    Output: A list of the givendata and top25news
            [data,new1,new2,...]
    """
    url = (
        "https://api.pushshift.io/reddit/search/submission"
        "?subreddit=worldnews"
        "&sort_type=score"
        f"&after={start_date}"
        f"&before={end_date}"
        "&sort=desc"
        f"&size=25"
        "&fields=title"
        f"&title={company_name}"
    )
    page = requests.get(url)
    if page is None:
        return None
    try:
        content = page.json().get("data")
        news_entry = []
        for news in content:
            news_entry.append(news["title"])
        return news_entry
    except (ValueError, KeyError, IndexError, NameError, TypeError):
        print("in except block redditworldnewsfetcher")

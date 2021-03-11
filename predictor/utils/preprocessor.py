import os
import dotenv
import requests
from bs4 import BeautifulSoup
import csv
import datetime as dt
import time

# -------------------------------#
#        Helper Functions        #
# -------------------------------#

def to_epoch(str_time):
    """This function takes in string time(yyyy-mm-dd) 
    and convert it to epoch time"""
    return int(dt.datetime.strptime(str_time, '%Y-%m-%d').timestamp())

def get_today_epoch():
    """ This function returns the epoch time of today """
    today = dt.datetime.combine(dt.date.today(), dt.datetime.min.time())
    epoch_today_gmt = int(today.timestamp()) - (60*60*8)
    return epoch_today_gmt

def get_last_weekday_epoch(epochtime):
    """ This function returns the most recent previous workday epoch time """
    epochtime = dt.datetime.fromtimestamp(epochtime)
    offset = max(1, (epochtime.weekday() + 6) % 7 - 3)
    timedelta = dt.timedelta(offset)
    most_recent = epochtime - timedelta
    most_recent = int(most_recent.timestamp()) - (60*60*24)
    return most_recent


# -------------------------------#
#    reddit_worldnews_fetcher    #
# -------------------------------#


class reddit_worldnews_fetcher:
    @staticmethod
    def top25news(start_date, end_date):
        """
        This function will fetch the top25 news of a given date
        Input: Time span start_date and end_date
        Out: A list of the givendata and top25news
            [data,new1,new2,...]
        """
        url = ("https://api.pushshift.io/reddit/search/submission"
               "?subreddit=worldnews"
               "&sort_type=score"
               f"&after={start_date}"
               f"&before={end_date}"
               "&sort=desc"
               "&size=25"
               "&fields=title")
        page = requests.get(url)
        if page == None:
            return None
        content = page.json()['data']
        news_entry = []
        news_entry.append(dt.datetime.fromtimestamp(
            start_date).strftime("%b %d,%Y"))
        for news in content:
            news_entry.append(news['title'])
        return news_entry

    @staticmethod
    def historical_data(period1, period2=str(dt.date.today())):
        """
        This function will fetch the top25 news of a given time span
        Input: time span. Format is yyyy-mm-dd. 
               If leave period2 empty, period2 will be the current date
        Output: Will create news.csv and story all the entries there.
        """
        current_time = to_epoch(period1)
        period2 = to_epoch(period2)
        with open('news.csv', mode='w') as csv_file:
            csvwriter = csv.writer(csv_file)
            while current_time < period2:
                next_day = current_time + (60*60*24)
                top25news = reddit_worldnews_fetcher.top25news(
                    current_time, next_day)
                if top25news != None:
                    csvwriter.writerow(top25news)
                time.sleep(1)  # To avoid error 429: Too Many Requests
                current_time = next_day
    @staticmethod
    def topnews_today():
        """
        This function returns the top news of today
        output:  a string of 25 top news seperated by spaces
                'news1 news2 news3 ...'
        """
        today_epoch = get_today_epoch()
        nextday_epoch = today_epoch + (60*60*24)
        top_news = reddit_worldnews_fetcher.top25news(today_epoch, nextday_epoch)
        return " ".join(top_news[1:])


# -------------------------------#
#          djia_fetcher          #
# -------------------------------#
class djia_fetcher:
    @staticmethod
    def get_djia_data(period1, period2):
        """
        This function takes will fetch Dow Jones Industrial Average historical data
        Input: 2 epoch time data, from period1 to period2
        Output: A tuple of headings and the body of the table
        and will scrape DowJohn historical data from yahoo news """

        url = ("https://finance.yahoo.com/quote/%5EDJI/history"
            f"?period1={period1}"
            f"&period2={period2}"
            "&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true")
        page = requests.get(url)
        # Parsing & Organizing Data
        headings = []  # A container to hold headings in the table
        data = []     # A container to hold the body in the table
        soup = BeautifulSoup(page.content, "lxml")
        table = soup.table
        # Read in table headings
        table_head = table.find('thead')
        table_headrows = table_head.find_all('th')
        for row in table_headrows:
            col = row.text.strip()
            headings.append(col.replace('*', ''))
        # Read in body content
        table_body = table.find('tbody')
        table_bodyrows = table_body.find_all('tr')

        for row in table_bodyrows:
            cols = row.select('td span')
            cols = [col.get_text() for col in cols]
            cols = [col.replace(',', '') for col in cols]
            for i in range(1, len(cols)):
                cols[i] = float(cols[i])
            data.append(cols)
        return (headings, data)

    @staticmethod
    def get_djia_today_label():
        """ This function returns a label telling if the DJIA goes up or down """
        today_epoch = get_today_epoch()
        last_workday = get_last_weekday_epoch(today_epoch)
        headings,data = djia_fetcher.get_djia_data(last_workday,today_epoch)
        last_workday_closed_price = data[1][4]
        today_closed_price = data[0][4]
        if today_closed_price > last_workday_closed_price:
            return 1
        else:
            return 0


print(reddit_worldnews_fetcher.topnews_today())
print(djia_fetcher.get_djia_today_label())
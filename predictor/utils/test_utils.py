"""Test utils/preprocessor.py functions."""
import pytest
from preprocessor import (
    to_epoch,
    get_today_epoch,
    get_last_weekday_epoch,
    reddit_worldnews_fetcher,
    djia_fetcher
    )


def test_to_epoch():
    """Assert string time is converted to epoch time."""
    # Assert that function gives us correct epoch time
    assert to_epoch("2021-01-01") == 1609488000
    # Assert that epoch time is type integer
    assert isinstance(to_epoch("2021-01-01"), int)


def test_get_today_epoch():
    """Assert today's epoch time is correct."""
    # Assert that epoch time is type integer
    assert isinstance(get_today_epoch(), int)


def test_get_last_weekday_epoch():
    """Assert last weekday epoch provides valid epoch time."""
    # Assert that last_weekday_epoch for 01-01-2021 is correct
    assert get_last_weekday_epoch(1609488000) == 1609315200
    assert isinstance(get_last_weekday_epoch(1609488000), int)


def test_reddit_worldnews_fetcher():
    """
    Test reddit_worldnews_fetcher methods.

    Assert top25news returns a list.
    Assert historical_data creates valid csv file.
    Assert topnews_today returns valid string.
    """
    pass


def test_djia_fetcher():
    """
    Test djia_fetcher methods.

    Assert get_djia_data returns a tuple.
    Assert get_djia_today_label returns a valid binary classification label.
    """
    pass

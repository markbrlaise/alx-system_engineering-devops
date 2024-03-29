#!/usr/bin/python3
"""
Importing requests module
"""

from requests import get


def number_of_subscribers(subreddit):
    """
    function tht queries the Reddit API and returns the number of subscribers for a given subreddit.
    """

    if subreddit is None or not isinstance(subreddit, str):
        return 0

    user_agent = {'User-agent': 'Google Chrome Version 112.0.5615.138'}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    response = get(url, headers=user_agent)
    all_data = response.json()

    try:
        return all_data.get('data').get('subscribers')

    except:
        return 0

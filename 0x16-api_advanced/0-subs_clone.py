#!/usr/bin/python3
"""
Module with function to find number of Reddit subscribers.
"""
import requests


def number_of_subscribers(subreddit):
    """Function to find number of subs for a given subreddit.
    Args:
        subreddit: (string): The subreddit.
    Returns:
        int: number of subscribers, else 0.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {"User-Agent": "Mozilla/5.0"}

    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json()
        return (data['data'].get('subscribers', 0))
    else:
        return (0)

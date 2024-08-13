#!/usr/bin/python3
"""
Module with function to print titles of top 10 hot posts of a subreddit
on Reddit.
"""
import requests


def top_ten(subreddit):
    """Function to print top 10 titles of hot posts for a given subreddit.
    Args:
        subreddit: (string): The subreddit.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {"User-Agent": "Mozilla/5.0"}

    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json()
        posts = data['data'].get('children', [])
        for post in posts:
            print(post['data'].get('title'))
    else:
        print(None)

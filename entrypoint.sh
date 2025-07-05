#!/bin/bash

echo "================"

git config --global user.name "${GITHUB_Actor}"
git config --global user.email "${Input_Email}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "================"
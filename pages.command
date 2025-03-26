#!/bin/bash
# This file is for Kat! It's used to automate pushing files to the live website.
cd kyvera.net

git fetch origin
git checkout gh-pages
git pull origin gh-pages
git reset --hard origin/main

git rm main.command
git rm pages.command
git rm run.bat
git rm run.command
git add .
git rm .gitignore

echo "Enter comment:"
read -r comment
git commit -m "$comment"
git push origin gh-pages --force
git checkout main 

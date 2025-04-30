#!/bin/bash
# This file is for Kat! It's used to automate pushing files to the live website.

# set working directory if not already in working directory
cd kyvera.net

# Sync with REPO
git fetch origin
git merge origin/main

# Stage all changes
git add .

# Commit and push changes
echo "Enter comment:"
read -r comment
git commit -m "$comment"
git push origin main 

# for gh-pages/live branch
# switches to the live branch and then copies the main branch
git fetch origin
git checkout gh-pages
git pull origin gh-pages
git reset --hard origin/main

# branch cleanup before commit
git rm pages.command
git rm main.command
git rm main.bat
git rm sync.bat
git rm sync.command
git rm run.bat
git rm run.command

git add .
git rm .gitignore

# commit and switch back to main branch
echo "Enter comment for gh-pages/live branch:"
read -r commentLIVE
git commit -m "$commentLIVE"
git push origin gh-pages --force
git checkout main 

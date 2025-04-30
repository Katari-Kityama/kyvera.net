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
echo -e "\033[94mEnter comment for main branch:\033[94m"
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
git rm RepoSyncAll.bat
git rm RepoSyncAll.command
git rm run.bat
git rm run.command

git add .
git rm .gitignore

# commit and switch back to main branch
echo "\033[94mEnter comment for gh-pages/live branch:\033[94m"
read -r commentLIVE
git commit -m "$commentLIVE"
git push origin gh-pages --force
git checkout main 

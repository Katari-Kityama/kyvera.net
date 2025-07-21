#!/bin/bash
# This file is for Kat! It's used to automate pushing files to the dev/main branch.
# set working directory if not already in working directory
cd kyvera.net

# Sync with REPO
git fetch origin
git merge origin/main

# Stage all changes
git add .

# Commit and push changes
echo -e "\033[94mEnter comment:\033[0m"
read -r comment
git commit -m "$comment"
git push origin main 

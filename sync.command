#!/bin/bash
# This file is for Kat! It's used to sync files with the main branch.
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

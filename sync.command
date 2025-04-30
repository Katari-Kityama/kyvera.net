#!/bin/bash
# This file is for Kat! It's used to sync files with the main branch.
# set working directory if not already in working directory
cd kyvera.net

git add .

echo "Enter comment:"
read -r comment
git commit -m "$comment"
git pull
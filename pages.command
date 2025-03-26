#!/bin/bash
# This file is for Kat! It's used to automate pushing files to the live website.
cd kyvera.net

git add .
git restore --staged run.bat
git restore --staged run.command
git restore --staged pages.command
git restore --staged .gitignore

echo "Enter comment:"
read -r comment
git commit -m "$comment"
git push origin gh-pages 

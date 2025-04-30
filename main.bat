#!/bin/bash
# Used to automate pushing files to the dev/main branch.
# set working directory if not already in working directory
cd kyvera.net

git add .

echo "Enter comment:"
read -r comment
git commit -m "$comment"
git push origin main 

@echo off
REM Used to automate pushing files to the dev/main branch.

REM Change directory to the project folder
cd kyvera.net 

REM Add all changes to Git
git add .

REM Ask user for a commit message
set /p comment=Enter comment: 

REM Commit with the message
git commit -m "%comment%"

REM Push to main branch
git push origin main
pause 
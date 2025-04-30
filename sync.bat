@echo off
REM Used to automate pushing files to the dev/main branch.

REM Change directory to the project folder
cd kyvera.net 

REM Add all changes to Git
git add .

REM Ask user for a commit message
set /p comment=Enter comment: 

REM Sync with REPO
git pull

REM Commit with the message
git commit -m "%comment%"

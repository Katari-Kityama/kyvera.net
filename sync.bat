REM Used to automate pushing files to the dev/main branch.

REM Change directory to the project folder
cd kyvera.net 

REM Sync with REPO
git fetch origin
git merge origin/main


echo on
REM This file is for Kat! It's used to automate pushing files to the live website.

REM Sync with REPO
git fetch origin
git merge origin/main

REM Stage all changes
git add .

REM Commit and push changes
set /p comment=Enter comment for main branch:
git commit -m "%comment%"
git push origin main

REM For gh-pages/live branch
git fetch origin
git checkout gh-pages
git pull origin gh-pages
git reset --hard origin/main

REM Branch cleanup before commit
git rm pages.command
git rm RepoSyncAll.bat
git rm RepoSyncAll.command
git rm run.bat
git rm run.command

git add .
git rm .gitignore

REM Commit and switch back to main branch
set /p commentLIVE=Enter comment for gh-pages/live branch:
git commit -m "%commentLIVE%"
git push origin gh-pages --force
git checkout main
pause
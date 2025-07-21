#!/bin/bash
# This file is for Kat! It's used to automate pushing files to the dev/main branch.
# set working directory if not already in working directory
cd kyvera.net

# Sync with REPO
git fetch origin
git merge origin/main

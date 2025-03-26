#!/bin/bash
# set project foldr directory
cd kyvera.net
npx browser-sync start --server --files "*.html, js/*.js"
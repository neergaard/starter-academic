#!/usr/bin/env bash

# Update the site
git add .
git commit -m "update site"
git push -u origin master

# Build and push site
hugo
cd public
git add .
git commit -m "build site"
git push origin master
cd ..

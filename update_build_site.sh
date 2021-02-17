#!/usr/bin/env bash

# Update the site
echo ""
echo "Updating site with changes..."
git add .
git commit -m "update site"
git push -u origin master

# Build and push site
echo ""
echo "Building site"
hugo
cd public
git add .
git commit -m "build site"
git push origin master
cd ..
echo ""
echo "Site fully updated and built."

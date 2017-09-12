#!/bin/bash

echo "============================="
echo "WIKI.JS - HEROKU INSTALLATION"
echo "============================="

VERSION=$(curl -L -s -S https://beta.requarks.io/api/version/stable)

echo "-> Background images"
curl "https://www.w3schools.com/css/img_lights.jpg" -o ./wiki/assets/images/bg_1.jpg


echo "-> Fetching latest build..."
curl -L -s -S https://github.com/Requarks/wiki/releases/download/v$VERSION/wiki-js.tar.gz | tar xz -C ./wiki

echo "-> Fetching dependencies..."
curl -L -s -S https://github.com/Requarks/wiki/releases/download/v$VERSION/node_modules.tar.gz | tar xz -C ./wiki

echo "-> Background images"
curl "https://www.w3schools.com/css/img_lights.jpg" -o ./wiki/assets/images/bg_1.jpg

echo "-> Installation Complete"

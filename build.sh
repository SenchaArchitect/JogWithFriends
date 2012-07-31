#!/bin/bash

echo "Building JogWithFriends"

rm -rf server-side/public/resources
cp -r resources server-side/public
mkdir -p server-side/public/resources/js

cp -r app/* server-side/public/resources/js
cp app.js server-side/public/resources/js/app.js

echo "Done!"
#!/bin/bash

echo "Building JogWithFriends"

rm -rf server-side/public/*
cp -r build/testing/JWF/ server-side/public
cp -rf resources/project-images server-side/public

echo "Done!"
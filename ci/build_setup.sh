#!/bin/sh
if ! type "gulp" > /dev/null; then
  echo Installing Gulp CLI...
  npm install -g gulp-cli
fi
echo Running NPM install...
npm install
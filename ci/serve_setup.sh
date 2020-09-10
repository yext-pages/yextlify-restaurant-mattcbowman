#!/bin/sh
if ! type "curl" > /dev/null; then
  echo Installing curl...
  apk add --no-cache curl
fi
if ! type "tar" > /dev/null; then
  echo Installing tar...
  apk add --no-cache tar
fi
if ! type "hugo" > /dev/null; then
  echo Downloading hugo...
  curl -Ls https://github.com/gohugoio/hugo/releases/download/v0.74.3/hugo_0.74.3_Linux-32bit.tar.gz | tar -xz -C /usr/local/bin
fi  
echo Installing Gulp CLI...
npm install -g gulp-cli
echo Running NPM install...
npm install
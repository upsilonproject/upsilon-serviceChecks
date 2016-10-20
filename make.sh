#!/usr/bin/bash -x

buildid -n 
buildid -qf rpmmacro -W .buildid.rpmmacro
rm -rf dist
mkdir -p dist/upsilon-serviceChecks

# install
cp -r src var dist/upsilon-serviceChecks/
cp .buildid* dist/upsilon-serviceChecks/
 
cd dist
find
zip -r upsilon-serviceChecks.zip upsilon-serviceChecks

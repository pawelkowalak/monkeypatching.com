#!/bin/bash -ex

cd "$(dirname "$0")/public"
git config user.email "pawel.kowalak@gmail.com"
git config user.name "Pawel Kowalak"
git add -A
git commit -m "Auto-deploy for build $CIRCLE_BUILD_NUM"
#!/bin/bash -x

cd "$(dirname "$0")/public" || exit 0
git config user.email "pawel.kowalak@gmail.com"
git config user.name "Pawel Kowalak"
git add -A
git commit -m "Auto-deploy for build $CIRCLE_BUILD_NUM" && git push origin master
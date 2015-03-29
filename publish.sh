#!/usr/bin/env bash
git add -A
./scripts/words-changed.sh
vim log.txt
git add -A
git commit -m "$1"
git push origin master

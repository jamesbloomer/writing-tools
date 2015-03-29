#!/usr/bin/env bash
ADDED=$(git diff --staged --word-diff=porcelain text/ | grep -P '^\+(?!\+)' | wc -w)
REMOVED=$(git diff --staged --word-diff=porcelain text/ | grep -P '^-(?!-)' | wc -w)
DATE=$(date "+%F %T %z")
TIMESTAMP=$(date +%s)
echo $DATE,$ADDED words added, $REMOVED words removed
echo $TIMESTAMP,$DATE,$ADDED,$REMOVED >> stats.txt

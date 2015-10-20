#!/bin/sh

sed '$d' -i ../cv.md
echo -n "Last Updated: " >> ../cv.md
date -R >> ../cv.md

#!/bin/sh

sed '$d' -i ../cv.md
echo -n " Last Updated: " >> ../cv.md
date -R >> ../cv.md

#Short CV
sed '$d' -i ../cv-short.md
echo -n " Last Updated: " >> ../cv-short.md
date -R >> ../cv-short.md

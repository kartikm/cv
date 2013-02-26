#!/bin/sh

sed '$d' -i CV.txt
echo -n "Last Updated: " >> CV.txt
date -R >> CV.txt

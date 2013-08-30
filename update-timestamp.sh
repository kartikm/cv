#!/bin/sh

sed '$d' -i KartikMistry-CV.txt
echo -n "Last Updated: " >> KartikMistry-CV.txt
date -R >> KartikMistry-CV.txt

sed '$d' -i KartikMistry-CV.md
echo -n "Last Updated: " >> KartikMistry-CV.md
date -R >> KartikMistry-CV.md


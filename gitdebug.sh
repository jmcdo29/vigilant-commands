#!/usr/bin/env sh
set a=$1
set a=$a:~1,-1%
set b=$2
set b=$b:~1,-1%
set message=Added debug line(s) at $a for $b
git add .
git commit -m "$message"
git push heroku master
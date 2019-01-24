#! /bin/sh
if [[ "$1" == "j" ]]; then
  curl -d "$2" -H 'Content-Type: application/json' $3;
elif [[ "$1" == "u" ]]; then
  curl -d "$2" $3;
fi
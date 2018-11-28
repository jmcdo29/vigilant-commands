#!/usr/bin/env sh
curl https://$1.herokuapp.com/api-json | sed 's/"isArray":false,//g' > $1.swagger.json && npx prettier --write $1.swagger.json
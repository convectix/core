#!/usr/bin/env sh

URL=$1

curl https://validator.w3.org/feed/check.cgi?url="$URL" 

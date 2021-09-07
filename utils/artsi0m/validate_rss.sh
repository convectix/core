#!/usr/bin/env sh

URL="$1"

validator_libxml_3_check (){
	curl -s "$1" | xmllint --validate
}

validator_w3_check (){
	validator_libxml_3_check $(curl https://validator.w3.org/feed/check.cgi?url="$1" )
}

validator_libxml_3_check "$URL" 
# validator_w3_check "$URL"

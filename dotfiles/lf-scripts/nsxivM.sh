#!/bin/bash

NAME=`echo "$1" | rev | cut -d "/" -f 1 | rev`

# Checking if file is provided with just name or full path
LOC=`dirname "$1"`
if [[ $LOC = *"/home/"* ]]; then
	cd "$LOC"
fi

n=0
ls | while read p; do
	n=$((n+1))
	if [[ "$p" = "$NAME" ]]; then
		ls | nsxiv -q -bfin $n
		break
	fi
done

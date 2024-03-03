#!/bin/bash

NAME=`echo "$1" | rev | cut -d "/" -f 1 | rev`

#if the file name does not contain any dot it is probably an directory
if [[ ! $NAME = *.* ]]; then 
  nsxiv -rqfi $1
  exit 0
fi

LOC=`dirname "$1"`
if [[ $LOC = *"/home/"* ]]; then
  cd "$LOC"
fi

n=0
ls | while read p; do
  n=$((n+1))
  if [[ "$p" = "$NAME" ]]; then
    ls | nsxiv -qf -in $n
    break
  fi
done

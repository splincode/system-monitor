#!/bin/bash

if [ "X$1" == 'X' ]; then
 echo "Not found file name..";
 exit;
fi;

rm "$1" > /dev/null 2>&1

dir=$(pwd)
echo create file log: $dir/"$1"
echo -ne "=======================\n"

while read LINE; do
   echo "$LINE" >> "$1"
   echo -en "\r$LINE"
done

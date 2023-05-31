#!/bin/bash

count=1
for FILE in "$@"
do

if [ -f "$FILE" ]; then
    echo $(wc -l $FILE) 
else
    echo "$FILE does not exist."
fi

count=$(( $count + 1 ))
done

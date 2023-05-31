#!/bin/bash
path=$1
if [ ! -d "$path" ]; then
    echo "$path does not exist."
    exit
fi

> result

subdirs=$(echo $(basename -a $path/*/ | paste -d ' ' -s -))
IFS=' ' read -ra ADDR <<< "$subdirs"
for subdir in "${ADDR[@]}"; do
    echo "$subdir" $(ls $path/$subdir | wc -l) >> result
done

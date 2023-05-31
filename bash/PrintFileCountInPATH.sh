#!/bin/bash

IFS=':' read -ra ADDR <<< "$PATH"
for path in "${ADDR[@]}"; do
  echo $path': ' $(find $path -type f | wc -l)
done

#!/bin/bash

pd='Permission denied'
logFiles=$(find /var/log/ -name '*.log' 2>&1 | grep -v "$pd")

> tmp_logs
for file in $logFiles; do
  tmp=$(tail -1 $file 2>&1)
  if [[ "$tmp" == *"$pd"* ]]; then
    echo $tmp >> pd_last_logs
  else
    echo $tmp >> tmp_logs
  fi
done

sed '/^$/d' tmp_logs > last_logs
rm tmp_logs

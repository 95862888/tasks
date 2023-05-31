#!/bin/bash

array=$(printenv | grep 'LC_*')

if [ "${#array[@]}" -gt 0 ] && [ $(printf "%s\000" "${array[@]}" | 
       LC_ALL=C sort -z -u |
       grep -z -c .) -eq 1 ] ; then
  echo ok
else
  echo error
fi

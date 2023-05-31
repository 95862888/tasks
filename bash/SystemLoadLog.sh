#!/bin/bash
run_time=$1
logfile=$2
while [[ $run_time > 0 ]]
do
echo $(date '+%d-%m-%Y %H:%M') = $(</proc/loadavg) >> $logfile
run_time=$(($run_time-1))
sleep 1 
done

#!/bin/bash

#check if /proc/sys/kernel/pid_max exists
if [[ -f /proc/sys/kernel/pid_max ]]; then
#Read the maximum process ID value from /proc/sys/kernel/pid_max

pid_max=$(cat /proc/sys/kernel/pid.max)
echo "Maximum Process IiD: $pid_max"

else

ech "Unable to find the pid_max file."
fi

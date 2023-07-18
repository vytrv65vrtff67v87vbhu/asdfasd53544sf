#!/bin/bash
# Save off parameters, the sourced setup scripts may manipulate them.
original_args=("$@")

# Get the current usage of CPU and memory
cpuUsage=$(top -bn1 | awk '/Cpu/ { print $2}')
memUsage=$(free -m | awk '/Mem/{print $3}')

# Print the usage
echo "CPU Usage: $cpuUsage%"
echo "Memory Usage: $memUsage MB"
#df -H
sleep 0.5  
exec "${original_args[@]}"

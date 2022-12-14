#!/bin/bash

# check current load
load=$(uptime | awk '{print $10 $11 $12}')
echo "Current load: $load"

# check memory usage
memory=$(free -m | awk 'NR==2{printf "Total: %sMB, Used: %sMB, Free: %sMB\n",$2,$3,$4; }')
echo "Memory usage: $memory"

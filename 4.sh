#!/bin/bash

# Disk usage percentage
disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# disk to print if above 80%
disk_details=$(df -h / | awk 'NR==2 {print $1, $2, $3, $4, $5}')

# Print the disk usage.
echo "Usage Details:"
echo "$disk_details"

# Condition if above 80%
if [[ $disk_usage -ge 80 ]]; then
    echo "Disk usage is above 80%. Current usage is ${disk_usage}%. Details are as follows:\n\n$disk_details" | mailx -s "Disk Usage Alert" chvivek0987kd@gmail.com
fi



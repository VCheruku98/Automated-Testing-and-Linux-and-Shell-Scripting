#!/bin/bash

# Check if apache is running
if ! ps aux | grep -v grep | grep apache2 > /dev/null; then
    sudo systemctl start apache2

    # logging the details in the .txt
    echo "$(date): Apache2 process started." >> apache2_log.txt
fi

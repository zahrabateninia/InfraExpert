#!/bin/bash

# a script to monitor disk usage on a server and send an email notification if it exceeds a certain threshold

THRESHOLD=90

DISK_USAGE=$(df -h / | awk 'NR==2{print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage on server $HOSTNAME has exceeded $THRESHOLD%." | mail -s "Disk space Alert" zahrabatenin@email.com
    exit 1
else
    echo "Disk usage is below $THRESHOLD%."
    exit 0
fi

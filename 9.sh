#!/bin/bash

# Getting details via the commands
uptime > system_report.txt
free -h >> system_report.txt
mpstat >> system_report.txt
df -h >> system_report.txt
ps aux >> system_report.txt

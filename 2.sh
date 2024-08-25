#!/bin/bash

# setting the backup with time stamp
BACKUP_DIR="backup"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="${BACKUP_DIR}/backup_${timestamp}.tar.gz"
# checking if the file is in or not ?
if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir "$BACKUP_DIR"
fi
# making the archive of the .txt files
tar -czvf "$BACKUP_FILE" *.txt
#print
echo "Backup created: $BACKUP_FILE"

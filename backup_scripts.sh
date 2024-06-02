#!/bin/bash

# Define variables
SOURCE_DIR="/c/Users/HP/Download"  # Specify the directory you want to backup
DESTINATION_USER="$USER"                # Capture current user
DESTINATION_HOST="$HOSTNAME"            # Capture current hostname
DESTINATION_DIR="/c/Users/HP/Documents"  # Destination directory on the remote server or cloud storage
LOG_FILE="/c/Users/HP/Documents/logfile.log"         # Log file to store backup operation results

# Run rsync to perform the backup
rsync -avz --delete $SOURCE_DIR $DESTINATION_USER@$DESTINATION_HOST:$DESTINATION_DIR > $LOG_FILE 2>&1

# Check the exit status of rsync
if [ $? -eq 0 ]; then
    echo "Backup completed successfully. Log file: $LOG_FILE"
else
    echo "Backup failed. See log file for details: $LOG_FILE"
fi

#!/usr/bin/env bash
# This script moves archived log files to the designated directory and backs them up to a remote server.

# Variables
GROUP_NUMBER=20
ARCHIVE_DIR="archived_logs_group20
REMOTE_HOST="2bf2a78b5c93.7d5f7213.alu-cod.online"
REMOTE_USER="2bf2a78b5c93"
REMOTE_DIR="/home/"

# Create the designated directory if it doesn't exist
mkdir -p "archived_logs_group20"

# Move all archived log files to the designated directory
mv *.heart_rate_log.txt_YYYYMMDD_HHMMSS. "archived_logs_group20"/

# Backup the contents of the directory to the remote server
scp -r "archived_logs_group20"/* "2bf2a78b5c93@2bf2a78b5c93.7d5f7213.alu-cod.online:/home/"


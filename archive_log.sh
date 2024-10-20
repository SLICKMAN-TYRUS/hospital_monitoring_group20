#!/bin/bash

# Step 1: Set the log file name and create a timestamp format
log_file="heart_rate_log.txt"
timestamp=$(date +"%Y%m%d_%H%M%S")

# Step 2: Define the new log file name with the timestamp
archived_log="${log_file}_${timestamp}"

# Step 3: Archive the log file by renaming it
mv "$log_file" "$archived_log"

# Step 4: Notify the user that the log file has been archived
echo "Log file archived as $archived_log"

# Step 5: Create a new empty log file so logging can continue
touch "$log_file"

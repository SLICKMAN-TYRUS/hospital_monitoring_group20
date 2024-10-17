#!/bin/bash

# Function to generate a random heart rate value
generate_heart_rate() {
	    echo $(( RANDOM % 61 + 40 ))  # Random heart rate between 40 and 100
    }

    # Prompt for device name
    read -p "Enter device name (e.g., Monitor_A): " device_name

    # Define the log file
    log_file="heart_rate_log.txt"

    # Function to log heart rate data
    log_heart_rate() {
	        while true; do
			        timestamp=$(date +"%Y-%m-%d %H:%M:%S")
				        heart_rate=$(generate_heart_rate)
					        echo "$timestamp $device_name $heart_rate" >> "$log_file"
						        sleep 1
							    done
						    }

						    # Start logging in the background
						    log_heart_rate &

						    # Get the PID of the background process
						    pid=$!

						    # Output the PID to the user
						    echo "Heart rate monitoring started with PID: $pid"


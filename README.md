Hospital Data Handling and Monitoring with Linux
Introduction
The project involves developing three shell scripts to manage heart rate data in a hospital. The scripts handle data recording, log archiving, and remote backups.

1. Setup Instructions
Ensure you have the following installed on your Linux system:

Bash shell
SSH access to the remote server
Basic Linux command-line knowledge
Clone the repository: git clone cd

2. Running the Scripts
Run the heart rate monitoring script:

./heart_rate_monitor.sh

The script will prompt for a device name, start logging heart rate data, and run in the background.

To archive the log file, run:

./archive_log.sh

The script will rename the log file with a timestamp.

Move the archived logs to a designated directory and back them up to a remote server:

./backup_archives.sh The script will create a backup in a different sandbox where a diffferent user can access the log

3. Team Meeting Report
Below is how we did the meetings to discuss and collaborate on this project
Task 1(google meet):Effiong,Anitha
Task 2(google meet) :Goodluck,Bianca
Task 3 (google meet) :Kessy,Ajak

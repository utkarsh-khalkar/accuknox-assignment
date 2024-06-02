# Backup Script

This script automates the backup of a specified directory to a remote server or cloud storage solution. It provides a report on the success or failure of the backup operation.

## Requirements

- `rsync`: Make sure `rsync` is installed on your system. If not, you can install it using MinGW or Cygwin for Windows, or your package manager for Linux distributions.

## Usage

1. Clone this repository or download the backup script (`backup_script.sh`).

2. Open the script in a text editor and update the following variables:
   - `SOURCE_DIR`: Specify the directory you want to backup.
   - `DESTINATION_USER`: Specify the username for the remote server or cloud storage.
   - `DESTINATION_HOST`: Specify the IP address or hostname of the remote server.
   - `DESTINATION_DIR`: Specify the destination directory on the remote server or cloud storage.
   - `LOG_FILE`: Specify the path to the log file where the backup operation results will be stored.

3. Save the script and make it executable:
4. Run the script:
 
5. Check the output for the success or failure of the backup operation. If successful, the log file will contain details of the backup process.

 Example


./backup_scripts.sh

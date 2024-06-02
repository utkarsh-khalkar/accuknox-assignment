# System Health Monitoring Script

This script monitors the health of a Linux system by checking CPU usage, memory usage, disk space, and running processes. If any of these metrics exceed predefined thresholds, the script sends an alert.

## Features

- Checks CPU usage
- Checks memory usage
- Checks disk space
- Checks running processes
- Sends alerts if any metric exceeds predefined thresholds

## Getting Started

### Prerequisites

- Linux system
- Bash shell

### Installation

1. Clone the repository:

   git clone https://github.com/utkarsh-khalkar/accuknox-assignment.git
2. Navigate to the repository directory:
   cd accuknox-assignment
   
4. Make the script executable:
   chmod +x system_health_monitor.sh
   
5. Run the script:
   ./system_health_monitor.sh
6. Check the output for the current status of CPU usage, memory usage, disk space, and running processes. If any metric exceeds predefined thresholds, an alert will be displayed.




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

## Example
./backup_script.sh

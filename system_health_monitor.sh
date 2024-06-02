#!/bin/bash

# System Health Monitoring Script
# This script monitors CPU usage, memory usage, disk space, and running processes.
# It sends alerts if any metrics exceed predefined thresholds.

# Define thresholds
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

# Check CPU usage
check_cpu() {
  CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
  if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
    echo "ALERT: CPU usage is above threshold! Current usage: $CPU_USAGE%"
  fi
}

# Check memory usage
check_memory() {
  MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
  if (( $(echo "$MEMORY_USAGE > $MEMORY_THRESHOLD" | bc -l) )); then
    echo "ALERT: Memory usage is above threshold! Current usage: $MEMORY_USAGE%"
  fi
}

# Check disk space usage
check_disk() {
  DISK_USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
  if [ $DISK_USAGE -gt $DISK_THRESHOLD ]; then
    echo "ALERT: Disk space usage is above threshold! Current usage: $DISK_USAGE%"
  fi
}

# Check running processes
check_processes() {
  PROCESS_COUNT=$(ps aux | wc -l)
  echo "INFO: Number of running processes: $PROCESS_COUNT"
}

# Main function to run all checks
main() {
  check_cpu
  check_memory
  check_disk
  check_processes
}

# Run the main function
main

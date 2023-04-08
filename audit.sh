#!/bin/bash

# Set the name of the log file based on the current date and time
LOG_FILE="ubuntu_audit_$(date +%Y-%m-%d_%H-%M-%S).log"

# Write the current uptime to the log file
echo "Uptime: $(uptime)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Write the currently logged-in users to the log file
echo "Current users:" >> "$LOG_FILE"
who >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Write recent login information to the log file
echo "Recent logins:" >> "$LOG_FILE"
last -a | head -n 10 >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Write the top 10 processes by RAM usage to the log file
echo "Top 10 processes by RAM usage:" >> "$LOG_FILE"
ps aux --sort=-%mem | head -n 11 >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Write the top 10 processes by CPU usage to the log file
echo "Top 10 processes by CPU usage:" >> "$LOG_FILE"
ps aux --sort=-%cpu | head -n 11 >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Write virtual memory usage to the log file
echo "Virtual memory usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Write disk usage information to the log file
echo "Disk space usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

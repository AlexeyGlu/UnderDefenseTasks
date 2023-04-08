#!/bin/bash

# Get system version
echo "System version:" > system_info.txt
lsb_release -a >> system_info.txt
echo "" >> system_info.txt

# Get network interfaces
echo "Network interfaces:" >> system_info.txt
ip addr show >> system_info.txt
echo "" >> system_info.txt

# Get firewall configuration
echo "Firewall configuration:" >> system_info.txt
ufw status >> system_info.txt
echo "" >> system_info.txt

# Get environment variables
echo "Environment variables:" >> system_info.txt
printenv >> system_info.txt
echo "" >> system_info.txt

# Get process information
echo "Processes:" >> system_info.txt
ps aux >> system_info.txt
echo "" >> system_info.txt

echo "System information collected and saved to system_info.txt"

#!/bin/bash

# Check if the service name argument was provided
if [ -z "$1" ]; then
    echo "Please provide a service name as an argument"
    exit 1
fi

SERVICE_NAME="$1"

# Check if the service is running
if systemctl is-active --quiet "$SERVICE_NAME"; then
    echo "$SERVICE_NAME is already running"
else
    # Prompt the user for confirmation before starting the service
    read -p "$SERVICE_NAME is not running. Do you want to start it? [y/n]: " choice
    case "$choice" in
        y|Y )
            # Start the service
            systemctl start "$SERVICE_NAME"
            echo "Started $SERVICE_NAME"
            ;;
        n|N )
            # Do nothing
            echo "Okay, $SERVICE_NAME remains stopped"
            ;;
        * )
            # Invalid input
            echo "Invalid input. $SERVICE_NAME remains stopped"
            ;;
    esac
fi

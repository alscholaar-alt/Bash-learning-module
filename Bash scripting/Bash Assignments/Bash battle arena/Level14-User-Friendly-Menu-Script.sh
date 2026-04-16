#!/bin/bash

# Level 14: User-Friendly Menu Script

# Mission: Create an interactive script that presents a menu with options for different system tasks (e.g., check disk space, show system uptime, list users), and executes the chosen task.


echo "Choose an option:"
echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. List users"

read -rp "input your choice numbers 1-3: " choice

case "$choice" in
    1)
        echo "The disk space is listed below"
        df -h
        ;;
    2)
        echo "The system uptime is listed below"
        uptime
        ;;
    3)
        echo "The users are listed below"
        cut -d: -f1 /etc/passwd
        ;;
    *)
        echo "Invalid input"
        ;;
esac

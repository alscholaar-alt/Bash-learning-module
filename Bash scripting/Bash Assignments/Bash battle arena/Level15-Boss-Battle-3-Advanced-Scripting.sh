#!/bin/bash

# Mission: Combine the skills you've gained! Write a script that:

# 1. Presents a menu to the user with the following options:

# - Check disk space
# - Show system uptime
# - Backup the Arena directory and keep the last 3 backups
# - Parse a configuration file settings.conf and display the values

# 2. Execute the chosen task.

echo "choose one of the following options"

echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. Backup the Arena directory and keep the last 3 backups"
echo "4. Parse a configuration file settings.conf and display the values"

read -rp "make a choice between [1-4]: " choice

case "$choice" in

1) echo "Disk space listed below"
    df -h
    ;;
2) echo "sytem uptime listed below"
    uptime
    ;;
3) echo "Arena directory backed up and only last 3 backup were kept"
    mkdir -p backups
    timestamp=$(date + "m%-d%-Y%_H%:M%:S%")
    tar -czf Arena_backup_$timestamp.tar.gz Arena
    mv Arena_backup_$timestamp.tar.gz backups
    cd backups
    rm -r $(ls -t | tail -n +4)
    ;;
4) config_file=settings.conf
    if [ ! -f "$config_file" ]; then
    echo "Configuration file does not exist."
    exit 1
    fi

    while IRS ='=' read key value; do 
     echo "Key: $key, Value: $value"
    done < $config_file
;;
*) 
    echo "Invalid input"
;;
esac


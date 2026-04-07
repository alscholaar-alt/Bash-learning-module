#!/bin/bash

# Level 8 Mission: Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

if [[ -z "$1" ]]; then
    echo "No word has been provided"
    exit 1
fi  
if [[ ! -d "$2" ]]; then
    echo "Directory is invalid"
    exit 1
fi  

grep -l "$1" "$2"/*.log

#!/bin/bash

# Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

#!/bin/bash
if [[ -z "$1" ]]; then
    echo "directory hasn't been provided"
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "directory does not exist"
    exit 1
fi

sort_files=$(ls -lSh "$1"/*.txt 2>/dev/null | tail -r | awk '{ print $5, $9'} )
echo "$sort_files"

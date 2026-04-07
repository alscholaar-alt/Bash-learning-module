#!/bin/bash

# Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

#!/bin/bash

if [[ ! -d "$1" ]]; then
    echo "directory does not exist"
    exit 1
fi

sort_files=$(ls -l "$1"/*.txt | sort -n)
echo "$sort_files"

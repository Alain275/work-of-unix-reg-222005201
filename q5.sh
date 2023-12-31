#!/bin/bash

# Check if the number of arguments is not equal to 2
if [ $# -ne 2 ]; then
    echo "Error: The script requires exactly 2 arguments."
    exit 1
fi

# Check if the arguments are not directories
if [ ! -d "$1" ] || [ ! -d "$2" ]; then
    echo "Error: Both arguments must be directories."
    exit 1
fi

# Delete from directory 1 all the files that are also in directory 2
for file in "$1"/*; do
    if [ -f "$file" ] && [ -f "$2/$(basename "$file")" ]; then
        rm "$file"
    fi
done

echo "Operation completed successfully."

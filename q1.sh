#!/bin/bash

# Check if the number of arguments is not equal to 3
if [ $# -ne 3 ]; then
    echo "Error: The script requires exactly 3 arguments." > error.txt
    exit 1
fi

# If the number of arguments is correct, sort the numbers in ascending order and write them to a file
echo -e "$1\n$2\n$3" | sort -n > numbers.txt

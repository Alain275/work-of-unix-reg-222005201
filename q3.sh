#!/bin/bash

# Check if the number of arguments is not equal to 1
if [ $# -ne 1 ]; then
    echo "Error: The script requires exactly 1 argument." > error.txt
    exit 1
fi

# If the number of arguments is correct, evaluate the arithmetic expression
result=$[$1]

# Display the result
echo "$1 = $result"

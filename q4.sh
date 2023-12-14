solution 4
#!/bin/bash

# Check if the number of arguments is not equal to 1
if [ $# -ne 1 ]; then
    echo "Error: The script requires exactly 1 argument."
    exit 1
fi

# Check if the argument is not a positive integer
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error: The argument must be a positive integer."
    exit 1
fi

# Calculate the factorial
factorial=1
for (( i=1; i<=$1; i++ ))
do
  factorial=$((factorial * i))
done

# Display the factorial
echo "The factorial of $1 is $factorial."
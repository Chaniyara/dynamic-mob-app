#!/bin/bash

# Define the file path
echo "Please enter your input:"

# Read the input and store it in a variable
read user_input

# Print the variable
echo "You entered: $user_input"

FILE_PATH="../andorid/app/src/main/java/com/wotnot.wotnot/MainActivity.java"

# Check if the file exists
if [ -f "$FILE_PATH" ]; then
    # Update package references in the file
    sed -i "s/'{PACKAGE_NAME}'/$user_input/g" "$FILE_PATH"
    
    echo "Package references updated successfully in $FILE_PATH."
else
    echo "The file $FILE_PATH does not exist."
fi

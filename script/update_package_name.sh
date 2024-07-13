#!/bin/bash

# Define the file path
FILE_PATH="../andorid/app/src/main/java/com/wotnot.wotnot/MainActivity.java"

# Check if the file exists
if [ -f "$FILE_PATH" ]; then
    # Update package references in the file
    sed -i 's/"{PACKAGE_NAME}"/com.wotnot.wotnot/g' "$FILE_PATH"
    
    echo "Package references updated successfully in $FILE_PATH."
else
    echo "The file $FILE_PATH does not exist."
fi

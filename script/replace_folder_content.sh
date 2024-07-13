#!/bin/bash

# Define the source and target paths
SOURCE_PATH="../andorid/app/src/main/res/minmap-hdpi"
TARGET_PATH="../changes/images/minmap-hdpi"

# Check if the source path exists
if [ -d "$SOURCE_PATH" ]; then
    # Check if the target path exists
    if [ -d "$TARGET_PATH" ]; then
        # Remove the current contents of the target path
        rm -rf "$SOURCE_PATH"/*
        
        # Copy the contents from the source path to the target path
        cp -r "$TARGET_PATH"/* "$SOURCE_PATH/"
        
        echo "Contents replaced successfully from $TARGET_PATH to $SOURCE_PATH."
    else
        echo "The target directory $TARGET_PATH does not exist."
    fi
else
    echo "The source directory $SOURCE_PATH does not exist."
fi

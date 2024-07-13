# !/bin/bash

# Define the paths of the source and target images
SOURCE_IMAGE="../changes/ic_launcher-playstore.jpg"
TARGET_IMAGE="../andorid/app/src/main/ic_launcher-playstore.png"

# Check if the source image exists
echo "Playstore image replace - START."
if [ -f "$SOURCE_IMAGE" ]; then
    # Move the source image to the target location, replacing the target image
    cp "$SOURCE_IMAGE" "$TARGET_IMAGE"
    echo "Image replaced successfully."
else
    echo "Source image does not exist."
fi
echo "Playstore image replace END."

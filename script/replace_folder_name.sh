# #!/bin/bash

# # Define the old and new paths
# OLD_PATH="../android/app/src/main/java/com/wotnot.wotnot"
# NEW_PATH="../android/app/src/main/java/com/mahek.mahek"

# # Check if the old path exists
# if [ -d "$OLD_PATH" ]; then
#     # Create the new directory structure
#     mkdir -p "$NEW_PATH"
    
#     # Move the contents from the old path to the new path
#     mv "$OLD_PATH"/* "$NEW_PATH/"
    
#     # Remove the old directory
#     rmdir "$OLD_PATH"
    
#     echo "Folder renamed successfully from $OLD_PATH to $NEW_PATH."
# else
#     echo "The directory $OLD_PATH does not exist."
# fi

#!/bin/bash

# Prompt the user for input
echo "Please enter your input:"

# Read the input and store it in a variable
read user_input

# Print the variable
echo "You entered: $user_input"

# Define the old and new paths
OLD_PATH="../andorid/app/src/main/java/com/{mahek.mahek}"
NEW_PATH="../andorid/app/src/main/java/com/$user_input"

# Check if the old path exists
if [ -d "$OLD_PATH" ]; then
    # Create the new directory
    mkdir -p "$NEW_PATH"
    
    # Move the contents from the old path to the new path
    mv "$OLD_PATH"/* "$NEW_PATH/"
    
    # Remove the old directory
    rmdir "$OLD_PATH"
    
    echo "Contents moved successfully from $OLD_PATH to $NEW_PATH."
else
    echo "The directory $OLD_PATH does not exist."
fi

#!/bin/bash

# Ask user for the directory to clone the repository to
read -p "Enter the directory to clone the repository to: (Example:/home/user_name/directory_01)" CLONE_DIR

# Set the SSH address of the repository
REPO_SSH="git@github.com:0x134134k/Slider.git"

# Create the directory if it doesn't exist
mkdir -p "$CLONE_DIR"

# Change to the clone directory
cd "$CLONE_DIR"

# Set the SSH key file location
SSH_KEY_FILE=~/.ssh/id_ed_25519.pub

# Extract the repository name from the SSH address
REPO_NAME=$(echo "$REPO_SSH" | awk -F/ '{print $NF}' | sed 's/.git$//')

# Create a directory with the same name as the repository
mkdir -p "$REPO_NAME"

# Change to the directory
cd "$REPO_NAME"

# Clone the repository with SSH
if GIT_SSH_COMMAND="ssh -i $SSH_KEY_FILE" git clone "$REPO_SSH" .
then
    echo "Repository cloned successfully to $CLONE_DIR/$REPO_NAME"
else
    echo "Failed to clone the repository"
fi
  
  sleep 1000
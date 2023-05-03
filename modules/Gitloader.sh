#!/bin/bash

# Set the directory to clone the repository to
CLONE_DIR=${1:-"/default/path"} # Default value is "/default/path"

# Set the SSH address of the repository
REPO_SSH=${2:-"git@github.com:username/repo.git"} # Default value is "git@github.com:username/repo.git"

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
GIT_SSH_COMMAND="ssh -i $SSH_KEY_FILE" git clone "$REPO_SSH" .

echo "Repository cloned successfully to $CLONE_DIR/$REPO_NAME"

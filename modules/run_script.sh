
#!/bin/bash

# Get input for the target directory
read -p "Please enter the directory path(example: /home/user_name/directory_01) " target_directory

# Change directory to the provided path
cd "$target_directory"

# Check if the directory change was successful
if [ $? -ne 0 ]; then
    echo "Failed to change directory to $target_directory"
    exit 1
fi

# List the files in the current directory
ls -l

# Get input for the script name
read -p "Please enter the script name: " script_name

# Check if the script exists and is executable
if [ ! -x "$script_name" ]; then
    echo "Script $script_name does not exist or is not executable"
    exit 1
fi

# Run the provided script
./$script_name

# Check if the script execution was successful
if [ $? -ne 0 ]; then
    echo "Failed to execute the script: ./$script_name"
    exit 1
fi

exit 0

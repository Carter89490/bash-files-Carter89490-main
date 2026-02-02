#!/bin/bash

# Prompt the user to enter a directory path
read -p "Please enter a directory path" dir

# Check if the directory exists
if [-d "$dir" ]; then
  # If
  echo "Directory exists. Listing files and subdirectories:"
ls -al "$dir"
  # List all files and subdirectories in the specified directory
else
# else the directory does not exist
  echo "Error: Directory does not exist."
fi

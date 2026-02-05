#!/bin/bash

# Read directory path from standard input
read directory

# Check if directory exists
if [ -d "$directory" ]; then
echo "Directory exists. Listing files and subdirectories:"
ls "$directory"
else
echo "Error: Directory does not exist."
exit 1
fi

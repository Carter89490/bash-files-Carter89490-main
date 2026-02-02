#!/bin/bash

# Prompt the user to enter a directory name or path
read -p "Enter a directory name or path: " directory

# Check if the specified directory exists
if [ ]; then
  # Get the current date and time
  current_date=
  current_time=

  # Create the backup directory name by appending the current date and time
  backup_directory=

  # Create the backup directory


  # Copy the contents of the original directory to the backup directory


  # Compress the backup directory using tar


  # Remove the uncompressed backup directory


  echo "Backup directory '$backup_directory.tar.gz' created and compressed successfully."
else
  echo "Error: Directory '$directory' does not exist."
fi

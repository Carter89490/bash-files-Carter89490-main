#!/bin/bash

# Prompt the user to enter a file name or path
read -p "Enter a file name or path: " filename

# Check if the specified file exists
if [ -f "$filename" ]; then
  # Get the current date and time
  current_date= # in the format YYYY-MM-DD
  current_time= # in the format HH-MM-SS

  # Create the backup file name by appending the current date and time
  # Be sure to add the date and time between the file name and extension (ex. README_2020-01-01_12-00-00.md)
  backup_filename=""

  # Copy the original file to the backup file


  # Compress the backup file using tar


  # Remove the uncompressed backup file


  echo "Backup file '$backup_filename.tar.gz' created and compressed successfully."
else
  echo "Error: File '$filename' does not exist."
fi

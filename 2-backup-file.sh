#!/bin/bash

# Prompt the user to enter a file name or path
read -p "Enter a file name or path: " filename

# Check if the specified file exists
if [ -f "$filename" ]; then
# Get the current date and time
current_date=$(date +%Y-%m-%d) # format: YYYY-MM-DD
current_time=$(date +%H-%M-%S) # format: HH-MM-SS

# Extract the file name without extension and the extension
base_name=$(basename "$filename")
name="${base_name%.*}" # filename without extension.
ext="${base_name##*.}" # file extension

# Create the backup file name by appending the current date and time
backup_filename="${name}_${current_date}_${current_time}.${ext}"

# Copy the original file to the backup file
cp "$filename" "$backup_filename"

# Compress the backup file using tar
tar -czf "${backup_filename}.tar.gz" "$backup_filename"

# Remove the uncompressed backup file
rm "$backup_filename"

echo "Backup file '${backup_filename}.tar.gz' created and compressed successfully."
else
echo "Error: File '$filename' does not exist."
fi

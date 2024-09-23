#!/bin/bash

# Prompt for the source directory
read -p "Enter the source directory: " SOURCE_DIR

# Prompt for the destination directory
read -p "Enter the destination directory: " DEST_DIR

# Check if source and destination directories are provided
if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
  echo "Both source and destination directories are required."
  exit 1
fi

# Function to copy files and maintain directory structure
copy_files() {
  local current_dir="$1"
  local target_dir="$2"

  # Create the target directory if it doesn't exist
  mkdir -p "$target_dir"

  # Loop through all items in the current directory
  for item in "$current_dir"/*; do
    if [ -d "$item" ]; then
      # If it's a directory, recurse into it
      copy_files "$item" "$target_dir/$(basename "$item")"
    elif [ -f "$item" ]; then
      # If it's a file, copy it with a new name
      cp "$item" "$target_dir/$(basename "$item")"
    fi
  done
}

# Start the copying process
copy_files "$SOURCE_DIR" "$DEST_DIR"

echo "Copy completed from '$SOURCE_DIR' to '$DEST_DIR'."


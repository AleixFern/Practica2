#!/bin/bash

# Check that exactly 1 argument was provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

file="$1"

# Check if the file exists
if [ ! -e "$file" ]; then
  echo "Error: The file does not exist."
  exit 1
fi

# Show file type
type=$(file "$file")
echo "File type: $type"

# Show permissions
[ -r "$file" ] && echo "The file is readable."
[ -w "$file" ] && echo "The file is writable."
[ -x "$file" ] && echo "The file is executable."


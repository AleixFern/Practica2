#!/bin/bash

echo "Enter the path:"
read path

# Check if it exists
if [ ! -e "$path" ]; then
  echo "The path does not exist."
  exit 1
fi

# Check if it's a directory
if [ -d "$path" ]; then
  echo "It is a directory."

# Check if it's a file
elif [ -f "$path" ]; then
  echo "It is a file."

  # Get extension (text after the last dot)
  name=$(basename "$path")
  
  # Check if there's a dot in the name
  if [[ "$name" == *.* ]]; then
    extension="${name##*.}"
    echo "Extension: .$extension"
  else
    echo "The file has no extension."
  fi

else
  echo "It is neither a regular file nor a directory."
fi

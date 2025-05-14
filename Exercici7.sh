#!/bin/bash

echo "Enter the path of the file:"
read file

# Check if the file exists
if [ ! -e "$file" ]; then
  echo "The file does not exist."
  exit 1
fi

# Check and display permissions
if [ -r "$file" ]; then
  echo "The file is Readable."
else
  echo "The file is NOT Readable."
fi

if [ -w "$file" ]; then
  echo "The file is Writable."
else
  echo "The file is NOT Writable."
fi

if [ -x "$file" ]; then
  echo "The file is Executable."
else
  echo "The file is NOT Executable."
fi

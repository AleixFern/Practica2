#!/bin/bash

echo "Enter the path to the directory to compress:"
read dir

echo "Enter the name of the final tar.gz file (without .tar.gz):"
read filename

# Check if the directory exists
if [ ! -d "$dir" ]; then
  echo "Error: The path does not exist or is not a directory."
  exit 1
fi

# Final tarball name
tarball="${filename}.tar.gz"

# Check if the tarball already exists
if [ -e "$tarball" ]; then
  echo "File '$tarball' already exists. Overwrite? (y/n)"
  read answer
  if [ "$answer" != "y" ]; then
    echo "Compression cancelled."
    exit 1
  fi
fi

# Compress the directory
tar -czf "$tarball" "$dir"

echo "Directory compressed successfully into $tarball"

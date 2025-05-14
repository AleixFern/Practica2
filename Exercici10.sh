#!/bin/bash

# Check that 2 parameters are given
if [ $# -ne 2 ]; then
  echo "You must give a filename and a protocol."
  exit 1
fi

file=$1
protocol=$2

# Check if file exists
if [ ! -e "$file" ]; then
  echo "The file does not exist."
  exit 1
fi

# Check if file ends in .txt or .csv
if [[ "$file" != *.txt && "$file" != *.csv ]]; then
  echo "The file must be .txt or .csv"
  exit 1
fi

# Count matching lines case-insensitive
lines=$(grep -i "$protocol" "$file" | wc -l)

# Show result
if [ "$lines" -eq 0 ]; then
  echo "No lines found with '$protocol'."
else
  echo "$lines lines found with '$protocol'."
fi

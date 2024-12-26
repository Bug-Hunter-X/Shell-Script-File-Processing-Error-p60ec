#!/bin/bash

# This script demonstrates the corrected approach to file processing.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # Some processing of the file would happen here
    # ...
    rm -f "$file"
  else
    echo "Error: File '$file' not found. Skipping removal."
  fi
done
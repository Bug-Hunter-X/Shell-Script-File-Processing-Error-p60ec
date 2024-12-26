#!/bin/bash

# This script attempts to process a list of files, but it contains a subtle error.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # Some processing of the file would happen here
    # ...
  else
    echo "Error: File '$file' not found."
  fi
  #The bug is in the next line.  The loop will not work correctly if any file is not found.
  #It assumes all files exist.
  rm -f "$file"  
 done
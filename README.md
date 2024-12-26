# Shell Script File Processing Bug
This repository demonstrates a common error in shell scripting: incorrectly handling file existence checks within a loop.  The script attempts to process a list of files, but it fails to robustly check if each file exists *before* attempting to remove it. This leads to errors if any file in the list is missing.

## Bug Description
The `bug.sh` script iterates through a list of files. It checks if a file exists and prints a message if it doesn't. However, it proceeds to `rm` the file regardless, causing errors if the file isn't present.  The solution addresses this by adding a conditional check before removal, ensuring the script handles missing files gracefully.

## Bug Solution
The `bugSolution.sh` script provides a corrected version. It includes a check to ensure the file exists *before* attempting to remove it.
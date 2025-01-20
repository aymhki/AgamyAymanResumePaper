#!/bin/bash

sleep 1

# Get the directory where the script is located (src folder)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Navigate up one level to the project root, then into the out directory
rm -rf "${SCRIPT_DIR}"/../out/*.aux \
       "${SCRIPT_DIR}"/../out/*.log \
       "${SCRIPT_DIR}"/../out/*.out \
       "${SCRIPT_DIR}"/../out/*.synctex.gz \
       "${SCRIPT_DIR}"/../out/*.fls \
       "${SCRIPT_DIR}"/../out/*.fdb_latexmk

# Add error checking
if [ $? -ne 0 ]; then
    echo "Error: Failed to clean auxiliary files"
    exit 1
fi
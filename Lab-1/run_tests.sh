#!/bin/bash

# input and output directories
INPUT_DIR="./testcases"
OUTPUT_DIR="./outputs"

# create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# loop through all files in testcases
for file in "$INPUT_DIR"/*; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")        # get file name without path
        output_file="$OUTPUT_DIR/$filename" # set output file path

        # run executable and redirect output
        ./P1 < "$file" > "$output_file"
        echo "Processed: $file -> $output_file"
    fi
done

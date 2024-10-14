#!/bin/bash
# $1: list of input files separated by space
# $2: output file

echo "Input files: $1"
echo "Output file: $2"

> "$2"

echo "$1" | tr ' ' '\n' | while read fname
do
    echo "Processing file: $fname"
    sort -k2,2 -k3,3 "$fname" >> "$2"
    echo "Sorted content from $fname appended to $2"
done

echo "Final output written to $2"


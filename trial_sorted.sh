#!/bin/bash
# $1: list of input files separated by space
# $2: output file

echo "$1" | tr ' ' '\n' | while read fname
do
    sort -k2,2 -k3,3  $fname 
done > "$2"



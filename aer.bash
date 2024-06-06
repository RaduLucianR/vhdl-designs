#!/bin/bash

# Analyze, elaborate and run VHDL file

file=$1
file_without_extension="${file%.*}" # Remove file extension

if [ -z "$1" ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi

ghdl -a $file
ghdl -e $file_without_extension
ghdl -r $file_without_extension
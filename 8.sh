#!/bin/bash

# checking if file is provied
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# setting file as variable
file="$1"

# file exists or not?
if [[ ! -f "$file" ]]; then
    echo "File $file does not exist."
    exit 1
fi

# counting the lines words and characters
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -c < "$file")

# printing the values
echo "File: $file"
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"


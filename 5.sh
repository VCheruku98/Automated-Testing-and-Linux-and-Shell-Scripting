#!/bin/bash

# file exists?
if [[ ! -f "$1" ]]; then
    echo "File $1 does not exist."
    exit 1
fi

# file permissions
if [[ -r "$1" ]]; then
    echo "File $1 has read permissions."
fi
if [[ -w "$1" ]]; then
    echo "File $1 has write permissions."
fi
if [[ -x "$1" ]]; then
    echo "File $1 has execute permissions."
fi

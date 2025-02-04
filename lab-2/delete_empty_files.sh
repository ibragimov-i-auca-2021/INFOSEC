#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' not found!"
    exit 1
fi

find "$DIR" -type f -empty -print -delete
echo "All empty files in '$DIR' have been deleted."

#!/bin/bash

directory="archive"
word_search="Error"

if [  ! -d "$directory" ]; then
    echo "Directory '$directory' does not exist."
    exit 1
fi

grep -l "$word_search" "$directory"/*.log
#!/bin/bash

checksum() {
    local file="$1"
    
    sha256sum "$file"
    
}

checksum "read.txt"

compare_checksum() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then
        echo "The checksums are the same."
    else
        echo "The checksums are different."
    fi
}
    compare_checksum "1234" "1234"

#!/bin/bash
 
 directory="battlefield"

 if [ ! -d "$directory" ]; then
     echo "Directory '$directory' does not exist."
     exit 1
 fi

find "$directory" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{ print $9, $5 }' 


    
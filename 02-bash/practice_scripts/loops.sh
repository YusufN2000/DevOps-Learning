#!/bin/bash

count=25
name=("yusuf" "ahmed" "ali" "mohamed")


while [ $count -lt 30 ]; do
    echo "Count is: $count"

    ((count++))

done


for name in "${name[@]}"; do

    if [ "$name" == "ali" ]; then
        continue
    fi

    echo "Name is: $name"
done
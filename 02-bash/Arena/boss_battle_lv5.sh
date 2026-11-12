#!/bin/bash

mkdir 'battlefield'

touch battlefield/knight.txt battlefield/sorcerer.txt battlefield/rouge.txt

if [ -f "battlefield/knight.txt" ]; then
    mkdir -p archive
    
    mv battlefield/knight.txt archive/

    echo "knight archived!"

else
    echo "knight missing!"
fi

echo "contents of battlefield:"
ls battlefield

echo "contents of archive:"
ls archive


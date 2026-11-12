#!/bin/bash


if [ -z "$1" ]; then
        echo "no file provided"
        exit 1

fi

if [ ! -f "$1" ]; then
        echo "file does not exist"
        exit 1
fi

line_count=$(wc -l < "$1")
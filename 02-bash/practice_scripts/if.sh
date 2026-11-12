#!/bin/bash

age=25
name=yusuf

if [ "$age" -lt 18 ] && [ "$name" != "yusuf" ]; then
    echo "You are not an adult and you are not yusuf"

elif [ "$age" -lt 18 ] && [ "$name" == "yusuf" ]; then
    echo "You are not an adult but you are yusuf"

elif [ "$age" -ge 18 ] && [ "$name" != "yusuf" ]; then
    echo "You are an adult but you are not yusuf"

elif [ "$age" -ge 18 ] && [ "$name" == "yusuf" ]; then
    echo "You are an adult and you are yusuf"

fi



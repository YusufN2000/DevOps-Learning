#!/bin/bash

set -x

argument() {
     echo "number of arguments: $#"
    echo "script name: $0"
    echo "Hello, $1!"
    echo "$2"
    echo "$3"

}

argument "yusuf" "This is a script about functions," "and you have created using parameters."

set +x

greeting() {
   
    read -p "Enter your name: " name
    echo "Hello, $name!"

}

greeting

echo "welcome to the world of functions in bash scripting. what do you know?"
read response
echo "That's interesting, $name!"
echo "what are you learning now?"
read response2
echo "and how are you finding it?"
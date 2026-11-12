#!/bin/bash

age=25
grade=84

if [ $age -gt 18 ]; then
    echo "You are elegible based on your age."

if [ $grade -ge 80 ]; then
    echo "You are elegible based on your grade."
    echo "You are elegible based on both your age and your grade."

fi

    else
    echo "Im sorry, you are not elegible."

fi
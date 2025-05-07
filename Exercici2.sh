#!/bin/bash

read -p "Enter an integer: " number

if [ "$number" -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is not negative."
fi

#!/usr/bin/env bash

if [[ "$1" =~ ^[0-9]+$ && $1 -ge 1 && $1 -le 64 ]]; then
    echo "2 ^ ($1 - 1)" | bc
elif [[ "$1" = "total" ]]; then
    echo "(2 ^ 64) - 1" | bc
else
    echo "Error: invalid input"
    exit 1
fi

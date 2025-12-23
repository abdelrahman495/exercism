#!/usr/bin/env bash

colors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

if [[ "$1" = "code" ]]; then
    for index in "${!colors[@]}"; do
        if [[ "${colors[$index]}" = "$2" ]]; then
            echo "$index"
        fi
    done
elif [[ "$1" = "colors" ]]; then
    for color in "${colors[@]}"; do
        echo "$color"
    done
fi

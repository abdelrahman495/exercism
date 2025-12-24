#!/usr/bin/env bash

colors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

first_color=""
second_color=""
result=""

for index in "${!colors[@]}"; do
    if [[ "${colors[index]}" = "$1" ]]; then
        if [[ "${colors[index]}" = "black" ]]; then
            first_color="found"
        else
            result+="$index"
            first_color="found"
        fi
    fi
done

[[ -z "$first_color" ]] && { echo "invalid color"; exit 1; }

for index in "${!colors[@]}"; do
    if [[ "${colors[index]}" = "$2" ]]; then
        result+="$index"
        second_color="found"
    fi
done

[[ -z "$second_color" ]] && { echo "invalid color"; exit 1; }

echo "$result"

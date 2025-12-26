#!/usr/bin/env bash

series=$1
slice=$2

if [[ -z "$series" ]]; then
    echo "series cannot be empty"
    exit 1
fi

if [[ "$slice" -gt "${#series}" ]]; then
    echo "slice length cannot be greater than series length"
    exit 1
fi

if [[ "$slice" = "0" ]]; then
    echo "slice length cannot be zero"
    exit 1
fi

if [[ "$slice" -lt "0" ]]; then
    echo "slice length cannot be negative"
    exit 1
fi

output=()
times=$(( ${#series} - slice ))

for (( i=0; i<=times; i++ )); do
    output[i]="${series:i:slice}"
done

echo "${output[@]}"

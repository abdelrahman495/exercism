#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

seq_1=$1
seq_2=$2

if [[ ${#seq_1} -ne ${#seq_2} ]]; then
    echo "strands must be of equal length"
    exit 1
fi

hamming_distance=0

for (( index=0; index<${#seq_1}; index++ )); do
    if [[ "${seq_1:index:1}" != "${seq_2:index:1}" ]]; then
        (( hamming_distance += 1 ))
    fi
done

echo "$hamming_distance"

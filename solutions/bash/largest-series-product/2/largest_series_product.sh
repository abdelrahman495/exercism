#!/usr/bin/env bash

input=$1
input_length=${#input}
span=$2
largest=0

if [[ span -lt 1 ]]; then
    echo "span must not be negative"
    exit 1
fi

if [[ span -gt input_length ]]; then
    echo "span must not exceed string length"
    exit 1
fi

if [[ ! "$input" =~ ^[0-9]+$ ]]; then
    echo "input must only contain digits"
    exit 1
fi

numbers=()

for (( index=0; index<=input_length; index++)); do
    numbers+=("${input:index:1}")
done

for (( i=0; i<=input_length-span; i++ )); do
    product=1
    for (( j=i; j<i+span; j++ )); do
        (( product *= numbers[j] ))
    done
    if [[ $product -gt $largest ]]; then
        largest=$product
    fi
done

echo $largest
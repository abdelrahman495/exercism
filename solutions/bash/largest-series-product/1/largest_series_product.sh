#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***
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
    numbers+=(${input:index:1})
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
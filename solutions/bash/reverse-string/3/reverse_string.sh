#!/usr/bin/env bash

string="$1"
reversed_string=""

for (( index=$(( ${#string} - 1 )); index >= 0; index-- )) ; do
    reversed_string+=${string:$index:1}
done

echo "$reversed_string"

unset string reversed_string

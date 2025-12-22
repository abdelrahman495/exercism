#!/usr/bin/env bash

sentence=$1

if [[ -z "$sentence" ]]; then
    echo "false"
    exit 0
fi

lower_case="${sentence,,}"

unique_letters=()

for (( index=0; index<"${#lower_case}"; index++ )); do
    letter="${lower_case:index:1}"

    if [[ "$letter" =~ [a-z] ]]; then
        if [[ ! "${unique_letters[@]}" =~ "$letter" ]]; then
            unique_letters+=("$letter")
        fi
    fi
done

if [[ "${#unique_letters[@]}" -ge 26 ]]; then
    echo "true"
else
    echo "false"
fi

#!/usr/bin/env bash

declare -A allergies=(
["eggs"]="1"
["peanuts"]="2"
["shellfish"]="4"
["strawberries"]="8"
["tomatoes"]="16"
["chocolate"]="32"
["pollen"]="64"
["cats"]="128"
)

sorted_keys=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")

score=$1

allergens=()

populate_allergens() {
    for (( index=${#sorted_keys[@]}-1; index>=0; index-- )); do
        if [[ $score -ge ${allergies[${sorted_keys[index]}]} ]]; then
            allergens[index]="${sorted_keys[index]}"
            (( score-=${allergies[${sorted_keys[index]}]} ))
        fi
    done
}

while [[ "$score" -gt 255 ]]; do
    (( score-=256 ))
done

if [[ "$2" = "allergic_to" ]]; then
    populate_allergens
    for (( index=0; index<${#sorted_keys[@]}; index++ )); do
        if [[ "${allergens[index]}" = "$3" ]]; then
            echo "true"
            exit 0
        fi
    done
    echo "false"
elif [[ "$2" = "list" ]]; then
    populate_allergens
    echo "${allergens[@]}"
fi

#!/usr/bin/env bash

number=$1

(( number % 3 == 0 )) && echo -n "Pling"
(( number % 5 == 0 )) && echo -n "Plang"
(( number % 7 == 0 )) && echo -n "Plong"

if (( number % 3 != 0 )) && (( number % 5 != 0 )) && (( number % 7 != 0 )); then
    echo "$number"
fi

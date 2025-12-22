#!/usr/bin/env bash

name=$1
turn=$2

if [[ "$turn" -lt 1 ]] || [[ ! "$turn" =~ ^[0-9]+$ ]]; then
    echo "Usage: ./line_up.sh <name> <number>"
    exit 1
fi

last_digit="${turn:(-1):1}"

if [[ ${#turn} -eq 1 ]]; then
    case "$last_digit" in
        1) echo "${name}, you are the ${turn}st customer we serve today. Thank you!" ;;
        2) echo "${name}, you are the ${turn}nd customer we serve today. Thank you!" ;;
        3) echo "${name}, you are the ${turn}rd customer we serve today. Thank you!" ;;
        *) echo "${name}, you are the ${turn}th customer we serve today. Thank you!" ;;
    esac
else
    second_last="${turn:(-2):1}"
    if [[ "$second_last" = "1" ]]; then
        echo "${name}, you are the ${turn}th customer we serve today. Thank you!"
    else
        case "$last_digit" in
            1) echo "${name}, you are the ${turn}st customer we serve today. Thank you!" ;;
            2) echo "${name}, you are the ${turn}nd customer we serve today. Thank you!" ;;
            3) echo "${name}, you are the ${turn}rd customer we serve today. Thank you!" ;;
            *) echo "${name}, you are the ${turn}th customer we serve today. Thank you!" ;;
        esac
    fi
fi

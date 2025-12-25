#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo "0"
    exit 0
fi

word="${1,,}"

if [[ ! "$word" =~ ^[a-z]+$ ]]; then
    echo "invalid"
    exit 1
fi

characters=()
score=0

for (( index=0; index<${#word}; index++ )); do
    characters[index]="${word:index:1}"
done

for character in "${characters[@]}"; do
    case "$character" in
        "d" | "g") (( score+=2 )) ;;
        "b" | "c" | "m" | "p") (( score+=3 )) ;;
        "f" | "h" | "v" | "w" | "y") (( score+=4 )) ;;
        "k") (( score+=5 )) ;;
        "j" | "x") (( score+=8 )) ;;
        "q" | "z") (( score+=10 )) ;;
        *) (( score+=1 )) ;;
    esac
done

echo "$score"

#!/usr/bin/env bash

option=$1
user_input=$2

sum=0
sum_of_squares=0

for (( index=1; index<=user_input; index++ )) ; do
    (( sum += index ))
    (( sum_of_squares += index ** 2))
done

square_of_sum=$(( sum ** 2 ))
difference=$(( square_of_sum - sum_of_squares ))

case "$option" in
    "difference") echo "$difference" ;;
    "square_of_sum") echo "$square_of_sum" ;;
    "sum_of_squares") echo "$sum_of_squares" ;;
esac

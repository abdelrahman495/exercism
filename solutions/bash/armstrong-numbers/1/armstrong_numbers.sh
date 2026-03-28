#!/usr/bin/env bash

user_input=$1

number_of_digits=${#user_input}

sum=0

for (( index=0; index<${#user_input}; index++ )) ; do
    (( sum += ${user_input:index:1} ** number_of_digits ))
done

if [[ $sum -eq $user_input ]] ; then
    echo "true"
else
    echo "false"
fi

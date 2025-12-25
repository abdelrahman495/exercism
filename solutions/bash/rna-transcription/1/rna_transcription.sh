#!/usr/bin/env bash

dna=()
rna=""

for (( index=0; index<${#1}; index++ )); do
    dna[index]="${1:index:1}"
done

for nucleotide in "${dna[@]}"; do
    if [[ "$nucleotide" = "G" ]]; then
        rna+="C"
    elif [[ "$nucleotide" = "C" ]]; then
        rna+="G"
    elif [[ "$nucleotide" = "T" ]]; then
        rna+="A"
    elif [[ "$nucleotide" = "A" ]]; then
        rna+="U"
    else
        echo "Invalid nucleotide detected."
        exit 1
    fi
done

echo "$rna"

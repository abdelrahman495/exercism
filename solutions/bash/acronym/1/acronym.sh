#!/usr/bin/env bash

phrase="${1^^}"
acronym="${1:0:1}"

for (( index=0; index<${#phrase}; index++ )); do
    if [[ "${phrase:index:1}" =~ [A-Z\ -] ]] ; then
        processed+="${phrase:index:1}"
    fi
done

for (( index=0; index<${#processed}; index++ )); do
    if [[ "${processed:index:1}" =~ [\ -] ]] && [[ "${processed:index+1:1}" =~ [A-Z] ]] ; then
        acronym+="${processed:index+1:1}"
    fi
done

echo "$acronym"

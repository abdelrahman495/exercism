#!/usr/bin/env bash

cat <<EOF > verse_1.txt
This is the house that Jack built.
EOF

cat <<EOF > verse_2.txt
This is the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_3.txt
This is the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_4.txt
This is the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_5.txt
This is the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_6.txt
This is the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_7.txt
This is the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_8.txt
This is the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_9.txt
This is the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_10.txt
This is the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_11.txt
This is the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

cat <<EOF > verse_12.txt
This is the horse and the hound and the horn
that belonged to the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
EOF

start=$1
end=$2

if [[ $start -lt 1 ]] || [[ $start -gt 12 ]] || [[ $end -lt 1 ]] || [[ $end -gt 12 ]] || [[ $start -gt $end ]]; then
    echo "invalid"
    exit 1
elif [[ $start -ne $end ]]; then
    for (( index=$start; index<=$end; index++ )); do
        cat verse_${index}.txt
        echo ""
    done
else
    cat verse_${start}.txt
fi

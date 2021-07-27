#!/bin/bash

echo "Twin prime number between 1 to 1000 are: "
declare -a PRIME
for i in {1..1000}
do
    PRIME[$i]=true
done

p=2

while [ $((p * p)) -le 1000 ]
do
    if [ "${PRIME[$p]}" = true ];
    then
        i=$((p * 2))
        while [ $i -le 1000 ]
        do
            PRIME[$i]=false
            i=$((i + p))
        done
    fi
    p=$((p + 1))
done

j=2
while [ $j -le 998 ]
do
    if [ \( "${PRIME[$j]}" = true \) -a \( "${PRIME[$((j + 2))]}" = true \) ];
    then
        echo "(${j},$((j + 2)))"
    fi
    j=$((j + 1))
done


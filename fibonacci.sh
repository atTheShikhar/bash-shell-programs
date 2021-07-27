#!/bin/bash
echo "How many terms? "
read n

function fibonacci 
{
    x=0
    y=1
    i=2
    echo "Fibonacci series upto $n terms: "
    echo "$x"
    echo "$y"
    while [ $i -lt $n ]
    do
        i=`expr $i + 1`
        z=`expr $x + $y`
        echo "$z"
        x=$y
        y=$z
    done
}

r=`fibonacci $n`
echo "$r"

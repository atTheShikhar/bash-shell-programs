#!/bin/bash
echo -n "Input no: "
read no
length=`expr length $no`
while [ $length -ne 0 ]
do
    b=$b`expr substr $no $length 1`
    length=`expr $length - 1`
done
echo "Reverse no is " $b

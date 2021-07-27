#!/bin/bash
echo "Enter a number"
read no
total=0
while [ $no -ne 0 ]
do
    temp=`echo $no % 10 | bc`
    total=`echo $total + $temp | bc`
    no=`echo $no / 10 | bc`
done
echo "Total of digits are: $total"


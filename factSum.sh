#!/bin/bash

echo "Enter the number of factorial to show"
read fact

ans=1
counter=0
while [ $fact -ne $counter ] 
do
    counter=`expr $counter + 1`
    ans=`expr $ans \* $counter`
done
echo Total of factorial is $ans

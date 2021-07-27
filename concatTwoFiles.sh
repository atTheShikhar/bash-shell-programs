#!/bin/bash
echo "Enter first file "
read first
echo "Enter second file "
read second
cat $first > third
cat $second >> third
echo Content of new file after concatinating first and second file
echo -----------------------------------------------------------
cat third | more
echo -----------------------------------------------------------


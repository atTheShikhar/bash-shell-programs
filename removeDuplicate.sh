#!/bin/bash

echo "Enter a string: "
read s
printf '%s\n' "$s" | awk -v FS="" '{ 
           for(i=1; i<=NF; i++) 
               if ($i==" " || !a[$i]++) printf "%s", $i; print "" 
}'

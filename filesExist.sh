#!/bin/bash
while [ $# -ne 0 ]
do
    if [ -e $1 ]
    then 
        echo "$1 already exists"
    else 
        if [ -d mydir ]
        then 
            cd mydir
            i=`ls -f | grep -c /`
            c=`ls -1 | wc -l`
            echo "Total file in current directory : " `expr $c - $i`
        else
            mkdir mydir
            cd mydir
            touch $1
        fi
        cd ..
    fi
    shift
done


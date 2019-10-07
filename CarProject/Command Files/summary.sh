#!/bin/bash
cd ~/Desktop/CarRentalApp/db
s=0
while read LINE 
do
    Y=0
    for WORD in $LINE
    do 
        if [ $Y -eq 0 ];
        then
            text=$(head -2 $WORD.txt)
            arr=($text)
            echo -n ${arr[0]}" "
            echo ${arr[1]}
            (( s=s+arr[1] ))
        fi
        Y=$((Y+1))
    done
done < Maincarfile.txt
echo "Total: $s"





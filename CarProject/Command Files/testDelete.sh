#!/bin/bash

cd ~/Desktop/CarRentalApp/scripts
bash create.sh HP950 bmw silver 7
bash delete.sh HP950
cd ~/Desktop/CarRentalApp/db

while read LINE
do

    y=0
    for word in $LINE 
    do
        if [ $y -eq 0 ]; then
            if [ "$word" == "HP950" ]; then
                echo " Test failed"
                exit
            fi
        ((y=y+1))
        fi
    done
done < Maincarfile.txt
if [ ! -f ~/Desktop/CarRentalApp/db/HP950.txt ]; then
    echo "Passed"
fi

    

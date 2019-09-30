#!/bin/bash
if  [ $# -ne 4 ]; then
    echo "Wrong input"
    exit
else 
echo "$1 $2 $3 $4" >> ~/Desktop/CarRentalApp/db/Maincarfile.txt
echo "" > ~/Desktop/CarRentalApp/db/$1.txt
fi
bash frame.sh "File created successfully"


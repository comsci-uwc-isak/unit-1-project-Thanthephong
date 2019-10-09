#!/bin/bash
cd ~/Desktop/CarRentalApp/db
if [ $# -ne 4 ]; then
	echo "Wrong input"
	exit
elif [ ! -f "$1.txt" ]; then
	echo "File not found!"
	exit
else 
echo "$1 $2 $3 $4" >> $1.txt
echo "Text inserted "
fi


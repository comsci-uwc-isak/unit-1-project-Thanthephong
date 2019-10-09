#!/bin/bash

#This file test the first success criteria, namely,
# A car can be created and stored in the database
# Step 1: create a car using the script create
cd ../scripts
bash create.sh TXM381 nissan red 9

#Step  2: check that the license file was created
if [ -f "../db/TXM381.txt" ]; then
	echo "Test one: a txt file was created inside the databased: passed " 
else
	echo "Test one: Error. File not found"
fi
cd ../db/
#Step 3: check that the car was added to the main file
lastline=$( tail -n 1 Maincarfile.txt)
if [ "TXM381 nissan red 9" == "$lastline" ]; then
	echo "Test one: Record was entered correctly: Passed"
else	
	echo "Test two:failed"
fi


 

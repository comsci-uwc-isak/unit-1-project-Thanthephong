#!/bin/bash
# This program creates a backup file for the CarRentalApp folder
location=$1

if [[ $# -ne 1 ]]; then
	echo "There was an error with backing up your files."
	exit
else
	cp -a ~/Desktop/CarRentalApp $location
	bash frame.sh "Successfully backed up into $location."
fi



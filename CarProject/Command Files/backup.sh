#!/bin/bash
# This program creates a backup file for the CarRentalApp folder

location=$1
if [[ $# -ne 1 ]]; then
        echo "There was an error."
        exit
else
        cp -a ~/Desktop/CarRentalApp $location
fi
bash frame.sh "Files backed up successfully"




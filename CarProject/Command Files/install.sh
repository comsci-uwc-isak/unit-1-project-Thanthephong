#!/bin/bash

#This file creates the folder structure for the 
#minimal Car Rental app

echo "Starting the installation"
echo "If you want to install the file in desktop, press yes. Else enter the path."
    ``
read path

if [ "$path" == "yes" ]; then
    cd ~/Desktop
    echo "~/Desktop" > path.txt
    mkdir RentalCarApp
    cd RentalCarApp
    mkdir db
    mkdir scripts
else 
#moving to the desired location
    cd path
    echo "moving to $path"
    echo "$path" > path.txt
    echo $PWD
    mkdir RentalCarApp
    cd RentalCarApp
    mkdir db
    mkdir scripts
fi


#Create App folder

echo "Structure created successfully"

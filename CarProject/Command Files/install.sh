#!/bin/bash

#This file creates the folder structure for the 
#minimal Car Rental app

    
   
    cd ~/Desktop
    mkdir CarRentalApp
    cd CarRentalApp
    mkdir db 
    mkdir scripts
    mkdir test
    cp -r ~/Desktop/Command/. ~/Desktop/CarRentalApp/scripts
    cp -r ~/Desktop/test/. ~/Desktop/CarRentalApp/test

     


#Create App folder

echo "Structure created successfully"

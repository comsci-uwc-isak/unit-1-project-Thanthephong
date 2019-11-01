#!/bin/bash
# This program uninstall the CarRentalApp
echo "Do you want to delete the Car Rental App folder?"
read ans

if [ $ans == "yes" ]; then
cd ~/Desktop
rm -r CarRentalApp

else 
	echo" Not deleting the files"
	exit
fi



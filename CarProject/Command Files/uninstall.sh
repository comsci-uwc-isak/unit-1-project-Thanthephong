#!/bin/bash
# This program uninstall the CarRentalApp
echo "Do you want to delete the Rental Car App folder?"
read ans

if [ $ans == "yes" ]; then
cd ~/Desktop
rm -r RentalCarApp

else 
	echo" Not deleting the files"
	exit
fi



#!/bin/bash
# This script check the summary of a particular car

cd ~/Desktop/CarRentalApp/db
# This program gives the summary ( total distance travelled ) of a car chosen by the user
s=0
# checks number of arguments
if [ $# -ne 1 ]; then
  echo "Enter a license plate"
  exit
fi

# checks if a car exist
 if [ ! -f ~/Desktop/CarRentalApp/db/$1.txt ]; then
   echo " File doesn't exist"
    exit
  fi
# adding the kilometers
  while read line
      do
         for word in $line
         do
               ((s=s+word))
                break
        done
      done < $1.txt

    cd ../scripts
    bash frame.sh "Total age of $1: $s km"












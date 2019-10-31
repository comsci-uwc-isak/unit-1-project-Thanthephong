#!/bin/bash
# This program gives the total distance traveled of all the cars in the db folder
cd ~/Desktop/CarRentalApp/db
s=0
while read LINE 
do
  for WORD in $LINE
    do
      echo "Distance traveled of $WORD: "
      while read line
      do
         for word1 in $line
         do
                echo -n "$word1 "
               ((s=s+word1))
                break
        done
      done < $WORD.txt
      echo
      break
    done
done < Maincarfile.txt
echo "Total: $s km"







    
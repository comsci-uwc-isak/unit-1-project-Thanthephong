#!/bin/bash

cd ~/Desktop/CarRentalApp/db

rm "$1".txt

echo "`sed  /$1/d  Maincarfile.txt`" > Maincarfile.txt

bash ../scripts/frame.sh "File deleted successfully"
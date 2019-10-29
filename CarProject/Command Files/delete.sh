#!/bin/bash
cd ~/Desktop/CarRentalApp/db
if [ $# -eq 1 ]; then
  if [ -f "$1.txt" ]; then
    rm "$1".txt
    echo "`sed  /$1/d  Maincarfile.txt`" > Maincarfile.txt
    bash ../scripts/frame.sh "File deleted successfully"
  else echo "File does not exist"
  fi
else echo "wrong argument"
fi


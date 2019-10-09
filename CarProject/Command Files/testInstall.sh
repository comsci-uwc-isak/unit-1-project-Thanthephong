#!/bin/bash
cd ../scripts
bash install.sh


if [ -d ~/Desktop/CarRentalApp/scripts ] && [ -d ~/Desktop/CarRentalApp/db ]; then
    echo "The files exists : passed"
else
    echo "The files does not exist : test failed"
fi


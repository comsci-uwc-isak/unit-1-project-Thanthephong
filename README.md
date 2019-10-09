![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------

### Defining the problem (Topic 1.1.1)
Mr. A, an owner of very big car rental shop downtown has had some problems with data. He opened as a very small shop with only him and his wife working in the factory, but as there are more people knowing about the shop, it gained a significant amount of customers. His wife is taking care of manually keeping track of the customer car data, but as there is a huge amount of people, making very hard to do it manually





### Solution proposed
In this project, we are trying to create a new system for a car rental shop in which they can manage the users' data more easily and sufficiently. I decided that choosing a bash program would be the best solution for Mrs.vx because of the complexity of the problem and also the simplicity of the program. They wanted to purchase a computer program collecting basic information about the distance driven for each car, and also other data. The want the program to be a simple and transparent based proram, that contains easy commands that allow to create a car, or record a trip; also it should include a command to see total statistics of the data. In that way, without having solid knowledge of computing, the owner can still use the program sufficiently. Lastly, there should be a backup system so if the user somehow lost the data, or the computer 's drive is accidentally wiped, we can still have it afterwards.


### Success Criteria

These are measurable outcomes
1. A car can be created and stored in the database
1. A car information can be edited
1. A car can be deleted from the database
1. The installation is ***simple-> one step process*
1. A summary (total/average distance traveled) can be generated for a particular car
1. Trips can be recorded and stored for an existing car
1. A basic database system is implemented
1. A basic backup functionality is available


Design
---------

Development
--------
1. Script to install the app

The following script creates the app folder and inside it creates two more folders
````.sh
#!/bin/bash

#This file creates the folder structure for the 
#minimal Car Rental app

echo "Starting the installation"
echo "Enter the path where you want to install. Press Enter"

read path

#moving to the desired location
cd $path
echo "moving to $path"
echo $PWD

if ( "$path" != "$PWD" ); then
    echo "Error creating folder structure"
    exit
fi

#Create App folder
mkdir RentalCarApp
cd RentalCarApp
mkdir db
mkdir scripts

echo "Structure created successfully"
````
2. Backup
 1) Make a folder called Backup
 2) Locate the CarRentalApp folder ( Desktop )
 3) Move directory ( cd )  to desktop
 4) Copy that folder and paste it to the Backup folder
 5) Print out backed up successfully command

3. Script for summary of one car
````.sh
#!/bin/bash
# This script check the summary of a particular car

cd ~/Desktop/CarRentalApp/db

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
````


Evaluation
-----------
### Test 1:
First run of the program we had one issue: the test file needed to move to the main folder
Also the create program did not store the license file inside the Database folder. Changing the line "echo " " > $license.txt" to "echo " " > db/$license.txt" solved this issue.

Second run of the program we had one issue: the test file needed to move to the main folder
````.sh
cd ../
````

This is necessary because the "create.sh" resides in the in folder whereas the test file is inside the /tests folders.

For step 3, we have to check if the information line of the car is actually inside Maincarfile.txt . Because the line we just added is the last line of the file, we have to use the command 
  ````.sh
  lastline = $( tail -n 1 maincarfile.txt)
  if [ "TXM381 nissan red 9" == "$lastline" ]; then ( HAVE TO USE QUOTATION MARK ) 
	  echo "Test one: Record was entered correctly: Passed"
  else	
	  echo "Test two:failed" 
  fi
  ````
  
 **Summary** 
We used the white box testing for testing our create car file

  

 





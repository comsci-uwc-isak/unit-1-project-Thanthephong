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
### Overall sketch of the system:
![Outline](Outline.png)
System diagram explanation: all the user need to do is installing the the program and start running it. All the data of the cars and the trips are entered by the user and that is the input. Using the program in the scripts folder, the computer will process the data and show the output to the user through terminal. There will also be a backup system and the user can choose where to put the backup file, for problems like data loss.
### Testing plan of the program
![test](test.jpg)
This program shows the testing plan/steps of the program, do this when the program is complete to see if it is functioning thouroughly


Development
--------
### 1. Install program
Steps:
1) Move to desktop
2) Create the CarRentalApp folder
3) Go inside the folder and install the neccessary folders ( db, scripts, test ) 
The following script creates the app folder and inside it creates two more folders
````.sh
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
````
The folder is defaultly located in desktop for the user to have easy access to it

### 2. Create car
Steps:
1) Get the input from the user
2) Check if there are 4 arguments (License Brand Color Num_of_seats )
3) Write to main file a line with those arguments
4) Create a "License".txt file
````.sh
#!/bin/bash
# This program records the information of a chosen car by the user
cd ~/Desktop/CarRentalApp/db
if [ $# -ne 4 ]; then
	echo "Wrong input"
	exit
elif [ ! -f "$1.txt" ]; then
	echo "File not found!"
	exit
else 
echo "$2 $3 $4" >> $1.txt
cd ../scripts
bash frame.sh "text inserted"
fi
````
The only difficulty I encountered was how to add lines to a text file without deleting the lines that are already in it, but I simply found the solution that we can use "echo >> " instead of "echo > " ( which will rewrite the whole file )
3. Edit 
Steps:
1) Check if the user enter enough arguments
2) Check if the car we want to edit exists
3) Locate the line with the license in the maincarfile.txt
4) Rewrite the line with the arguments the user just entered
````.sh
 bash#!/bin/bash
#This program edit the information of an exiting car in the
#maincarfile
#user enters [license place] [model] [red] [pp]

if [ $# -ne 4 ]; then
  echo "Error with the number of arguments"
  echo "Enter License Maker Model Passengers"
  exit
fi

license=$1
maker=$2
model=$3
pp=$4

cd ../db

if [ ! -f "$license.txt" ]; then
  echo "File not found!"
fi

#find the line with the given car plate and delete it
sed -i '' "/^$license/d" maincarfile.txt
#add the new information
echo "$license $maker $model $pp" >> maincarfile.txt
cd ../scripts
bash frame.sh "Car edited successfully"
````
In this program, there is a very hard command called sed -i. It looks very complicated but it is very helpful, it helps to locate the line with containing the word that you need to find. I finds this confusing at first because I don't know what the word in that command means, but then I did research only and finally know.


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

  

 





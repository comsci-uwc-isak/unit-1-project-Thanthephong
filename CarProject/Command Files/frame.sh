#!/bin/bash

word=$1


(( num = 50 - ${#word} / 2))


for (( l=0 ; l<5; l++))
do

	if [ $l = 0 ] || [ $l = 4 ]; then
		for (( i=0 ; i<100 ; i++ )) 
		do

			echo -n "*"
		done
		echo " "

	elif [ $l = 1 ] || [ $l = 3 ]; then
		for (( i=0; i<100 ; i++)) do
			if [ $i == 0 ] || [ $i == 99 ]; then	
				echo -n "*"
			else 
				echo -n " "
			fi
		done

		echo " "

	elif [ $l = 2 ]; then
		for (( i=0; i<100-${#word}-1 ; i++)) do
			if [ $i == 0 ] ; then	
				echo -n "*"
			else 
				echo -n " "
			fi
			if [ $i == $num ]; then
				echo -n $word
			fi
		done
		echo "*"
	fi

done






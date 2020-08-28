#!/bin/bash

read -p "Enter a number to check day" n #takes the number as input and prints day

	if [ $n -eq 1 ] #checks the number entered by user with condition and prints day 
	then
		echo "Monday"

	elif [ $n -eq 2 ]
	then
		echo "Tuesday"

	elif [ $n -eq 3 ]
	then
		echo "Wednesday"

	elif [ $n -eq 4 ]
	then
		echo "Thursday"

	elif [ $n -eq 5 ]
	then
		echo "Friday"

	elif [ $n -eq 6 ]
	then
		echo "Saturday"

	elif [ $n -eq 7 ]
	then
		echo "Sunday"

	fi

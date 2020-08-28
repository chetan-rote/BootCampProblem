#!/bin/bash

coin=$(( RANDOM%2 )) #genrates 0 and 1 randomly

if [ $coin -eq 0 ] #checks if number is 0 then print Heads when 1 prints Tails 
then
	echo "Heads"
else
	echo "Tails"
fi

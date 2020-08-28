#!/bin/bash 
read -p  "Enter number:" number  #takes number as input from user

if [[ number -gt 0 && number -lt 2 ]] #if number is greater than 0 and less than 2 prints Unit 
then								   
        echo "Unit"
elif [[ number -gt 9 && number -lt 11 ]] #if number is greater than 9 and less than 11 prints Ten
then
        echo "Ten"
elif [[ number -gt 99 && nnumber -lt 101 ]] #if number is greater than 99 and less than 101 prints Hundred
then
        echo "Hundred"
elif [[ number -gt 999 && number -lt 1001 ]] #if number is greater than 999 and less than 1001 prints Thousand
then
        echo "Thousand"
else
        echo "Invalid Choice"  
fi

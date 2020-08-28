#!/bin/bash

echo "welcome to Artihmetic computation problem"

# taking input from user
read -p "enter first number 1:" num1
read -p "enter second number 2:" num2
read -p "enter third number 3:" num3

#printing numbers entered by user
echo "first number:"$num1
echo "second number:"$num2
echo "third number:"$num3

#computing results
Result1=$(($num1+$num2*$num3))
Result2=$(($num1*$num2+$num3))
Result3=$(($num3+$num1/$num2))
Result4=$(($num1%$num2+$num3))

#delcaring a dictionary
declare -A Dictionary

#storing computation data in dictionary
Dictionary[cnt1]=$Result1
Dictionary[cnt2]=$Result2
Dictionary[cnt3]=$Result3
Dictionary[cnt4]=$Result4

#printing dictionary
echo "Dictionary elements are:" ${Dictionary[@]}

#storing dictionary in array
count=0
for i in ${Dictionary[@]}
do
	array[((count++))]=$i
done

#printing array elements
echo "Array elements are:" ${array[@]}

#sorting in descending order
for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${array[j]} -lt ${array[$((j+1))]} ]
		then
			temp=${array[j]}
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array in descending order:" ${array[@]}

#sorting in ascending order
for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${array[j]} -gt ${array[$((j+1))]} ]
		then
			temp=${array[j]}
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array in ascending order:" ${array[@]}

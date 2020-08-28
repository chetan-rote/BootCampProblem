#!/bin/bash

echo "welcome to Artihmetic computation problem"

# taking input from user
read -p "enter first number:" num1
read -p "enter second number:" num2
read -p "enter third number:" num3

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
declare -A myDict

#storing computation data in dictionary
myDict[cnt1]=$Result1
myDict[cnt2]=$Result2
myDict[cnt3]=$Result3
myDict[cnt4]=$Result4

#printing dictionary
echo "Dictionary elements are:" ${myDict[@]}

#storing dictionary in array
count=0
for i in ${myDict[@]}
do
	myArray[((count++))]=$i
done

#printing array elements
echo "Array elements are:" ${myArray[@]}

#sorting in descending order
for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${myArray[j]} -lt ${myArray[$((j+1))]} ]
		then
			temp=${myArray[j]}
			myArray[$j]=${myArray[$((j+1))]}
			myArray[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array in descending order:" ${myArray[@]}

#sorting in ascending order
for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${myArray[j]} -gt ${myArray[$((j+1))]} ]
		then
			temp=${myArray[j]}
			myArray[$j]=${myArray[$((j+1))]}
			myArray[$((j+1))]=$temp
		fi
	done
done
echo "Sorted Array in ascending order:" ${myArray[@]}

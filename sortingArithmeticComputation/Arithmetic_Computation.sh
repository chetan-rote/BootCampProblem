

#!/bin/bash

#UC1

# taking input from user
read -p "enter first number 1:" number1
read -p "enter second number 2:" number2
read -p "enter third number 3:" number3

#UC2Compute1
Result1=$(($number1+$number2*$number3))
echo "Result of operation1 is:"$Result1

#UC3Compute2
Result2=$(($number1*$number2+$number3))
echo "Result of operation2 is:"$Result2

#UC4Compute3
Result3=$(($number3+$number1/$number2))
echo "Result of operation2 is:"$Result3

#UC5Compute4
Result4=$(($number1%$number2+$number3))
echo "Result of operation4 is:"$Result4


#delcaring a dictionary
declare -A Dictionary

#UC6Stores computation in Dictionary
#storing computation data in dictionary
Dictionary[res1]=$Result1
Dictionary[res2]=$Result2
Dictionary[res3]=$Result3
Dictionary[res4]=$Result4

echo "Dictionary elements are:" ${Dictionary[@]}

#UC7 Stores value in array
#storing dictionary in array
count=0
for i in ${Dictionary[@]}
do
	array[((count++))]=$i
done

echo "Array elements are:" ${array[@]}


#UC8Sort result in descending array

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

#UC9Sort result in ascending array
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

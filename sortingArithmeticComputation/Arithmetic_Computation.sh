

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

#UCStores computation in Dictionary
#delcaring a dictionary
declare -A Dictionary

#storing computation data in dictionary
Dictionary[res1]=$Result1
Dictionary[res2]=$Result2
Dictionary[res3]=$Result3
Dictionary[res4]=$Result4

#UC7 Stores value in array
echo "Dictionary elements are:" ${Dictionary[@]}

#storing dictionary in array
count=0
for i in ${Dictionary[@]}
do
	array[((count++))]=$i
done



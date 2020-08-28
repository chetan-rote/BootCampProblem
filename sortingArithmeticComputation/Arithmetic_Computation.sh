

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

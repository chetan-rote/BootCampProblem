#!/bin/bash -x

#take input from user
read -p "Enter 1st number:" a

read -p "Enter 2nd number:" b

read -p "Enetr 3rd number:" c

#Arithmatic Operation
x1=$(( a+b*c ))

x2=$(( a%b+c ))

x3=$(( c+a/b ))

x4=$(( a*b+c ))

#Results stored in array
count=0
Array[((count++))]=$x1
Array[((count++))]=$x2
Array[((count++))]=$x3
Array[((count++))]=$x4
echo ${Array[@]}

#Finding minimum and maximum
max=${Array[0]}
min=${Array[0]}

#Loop through all elements in array
for i in ${Array[@]}
do
        #Update max if applicable
        if [[ $i -gt $max ]]
        then
                max=$i
        fi
        #Update min if applicable
        if [[ $i -lt $min ]]
        then
                min=$i
        fi
done

echo "Maximum number:" $max
echo "Minimum number:" $min

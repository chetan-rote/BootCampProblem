#!/bin/bash 

#Constants
Maxcount=5
count=1
i=0
sum=0

#Generating 5 random 2 digit values
while [ "$count" -le $Maxcount ]
do
        Array[$count]=${RANDOM:0:2}
        let "count += 1"
done
        echo "${Array[@]}"

#Sum of array
for i in ${Array[@]}
do
	sum=`expr $sum + $i`
done
echo $sum

#Calculating avg
avg=$(echo $sum / 5 )
echo $avg

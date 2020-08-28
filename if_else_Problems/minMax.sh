#!/bin/bash

#Constants
Maxcount=5
count=1
number=0

#finding minimum and maximum
maximum=${Array[0]}
minimum=${Array[0]}

#Generating 5 Random 3 digit values
while [ "$count" -le $Maxcount ]
do
        Array[$count]=${RANDOM:0:3}
        let "count += 1"
done
        echo "${Array[@]}"


#Loop through all elements in the array
for number in ${Array[@]}
do
        #Update maximum if applicable
        if [[ $number -gt $maximum ]]
        then
                maximum=$number
	fi

        #Update minimum if applicable
        if [[ $number -lt $minimum ]]
        then
                minimum=$number
        fi
done

echo "Maximum number of array:" $maximum

echo "Minimum number of array:" $minimum

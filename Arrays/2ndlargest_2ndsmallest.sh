

#!/bin/bash

Maxcount=10
count=1
i=0
largest=${Array[0]}
secondLargest='unset'

smallest=${Array[0]}
secondSmallest='unset'

while [ "$count" -le $Maxcount ]
do
	Array[$count]=${RANDOM:0:3} #generating the 3 digit 10 random numbers and storing them in array
	let "count += 1"
done
	echo "${Array[@]}"




for((i=1; i < ${#Array[@]}; i++ )) 
do
	if [[ ${Array[i]} > $largest ]] #checking the element at i'th position is greater
	then
		secondLargest=$largest
		largest=${Array[i]}
	elif (( ${Array[i]} != $largest )) && { [[ "$secondLargest" = "unset" ]] || [[ ${Array[i]} > $secondLargest ]]; }
#visiting each element of array and checking it and comparing		
	then
		secondLargest=${Array[i]}
	fi
done

echo " Second Largest element is : $secondLargest"


for((i=1; i < ${#Array[@]}; i++ ))
do
	if [[ ${Arraay[i]} < $smallest ]]
	then
		secondSmallest=$smallest
		smallest=${Array[i]}
	elif (( ${Array[i]} -ne $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${Array[i]} < $secondSmallest ]]; }
	then
		secondSmallest=${Array[i]}
	fi
done

echo "Second Smallest element is : $secondSmallest-"



#!/bin/bash

Maxcount=10
count=1

while [ "$count" -le $Maxcount ]
do
	Array[$count]=${RANDOM:0:3}
	let "count += 1"
done
	echo "${Array[@]}"

 
second_Largest=$(printf '%s\n' "${Array[@]}" | sort -n | tail -2 | head -1)

echo "Second Largest element is : $second_Largest"

second_Smallest=$(printf '%s\n' "${Array[@]}" | sort -n | head -2 | head -1)

echo "Second Smallest element is : $second_Smallest"


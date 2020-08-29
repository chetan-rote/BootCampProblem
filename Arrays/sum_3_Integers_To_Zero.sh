
 

#!/bin/bash

declare -a array
array[0]=2
array[1]=-1
array[2]=-1

sum=0;

for i in ${array[@]}
do
	sum=$(( $sum + $i ))
done

if [ $sum -eq 0 ]
then
	echo "sum is equals to zero"
else
	echo "sum is not equal to zero"
fi

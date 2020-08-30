#!/bin/bash

read -p "enter number:" number

i=1;
while [ $i -le 9 ]
do
	i=$(( i+1 ));
	res=$(( number ** i ))
	if [ $res -le 256 ]
	then
		echo "$number to the power of $i is :" $res
	else
		exit;
	fi
done

#!/bin/bash
read -p "enter a number to print table of power of 2 :" number


for (( i=1;i<=$number;i++ ))
do
	power=$(( 2**$i ))
	echo $power
done
© 2020 GitHub, Inc.

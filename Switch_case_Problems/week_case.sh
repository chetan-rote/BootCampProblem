
#!/bin/bash

read -p "Enter number to check day "

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "Day to your number $n is : "
for (( i=1; i<=$len; i++ ))
do
	# get one digit at a time
	digit=$(echo $n | cut -c $i)

    # use case control structure to find digit equivalent in words
    case $digit in
        1) echo -n "Monday" ;;
        2) echo -n "Tuesday" ;;
        3) echo -n "Wednesday" ;;
        4) echo -n "Thursday" ;;
        5) echo -n "Friday" ;;
        6) echo -n "Saturday" ;;
        7) echo -n "Sunday" ;;
    esac
done

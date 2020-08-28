
#!/bin/bash


count=0;
footinInch=12;
footinMeter=3.28;

while [ $count -lt 5 ]; #checks value of count

do
	read -p "Enter Length to convert" length;
	echo " 1.Feet to Inch
	       2.Feet to meter
	       3.Inch to Feet
	       4.Meter to Feet";

	read -p "Enter the choice" choice;

	case $choice in

		1)
		   conversion=$(( length * footinInch ));  #converts the length feet to inch
		   echo "conversion of $length is : $conversion";;

		2)
		  conversion = printf %3.f "(($length*10**3/328))e-3"; #converts the length feet to meter
		  echo "conversion of length is : $conversion";;

		3)
		  conversion=$((length / footinInch)); #converts the length inch to feet
 		  echo "Conversion of $length is : $conversion";;

		4)
		  conversion=$((length * footinMeter)); #converst the length meter to feet
		  echo "Conversion of $length is : $conversion";;

		*)
			echo "Invalid choice";;
			
	esac
	count=$((count + 1));
	sleep 2;
done;

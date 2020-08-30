

#!/bin/bash

farenheit() {			#created a function which will convert the given temperature to  celsius
read -p "Enter temperature" temp

scale=$(( ($temp*9/5)+32 ))

echo "Converted to Farenheit $scale "

}

celsius() {
read -p "Enter Temperature" temp

 scale=$(( ($temp - 32)*5/9 ))

echo "Converted to Celsius $scale"
}


echo "*** Converting between the different temperature scales ***"
echo "1) Convert Celsius temperature into Fahrenheit"
echo "2) Convert Fahrenheit temperatures into Celsius"
read -p "Enter the choice" choice


case $choice in

	1) farenheit ;;

	2) celsius ;;

	*) invalid choice ;;
esac

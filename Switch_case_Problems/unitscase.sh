#!/bin/bash -x

read -p "Enter the number : " number  

        case unit  in
		$[[ number -gt 0 && number -lt 2 ]]) #if number is greater than 0 and less than 2 prints Unit
		echo "Unit"

		$[[ number -gt 9 && number -lt 11 ]]) #if number is greater than 9 and less than 11 prints Ten
		echo "Ten"

		$[[ number -gt 99 && nnumber -lt 101 ]]) #if number is greater than 99 and less than 101 prints Hundred
		echo "Hundred"

		$[[ number -gt 999 && number -lt 1001 ]]) #if number is greater than 999 and less than 1001 prints Thousand
		echo "Thousand"

		*)
		echo "Invalid choice"
	esac

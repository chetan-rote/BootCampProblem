#!/bin/bash

number1=$((RANDOM%6 +1)) # generates random dice number

number2=$((RANDOM%6 +1)) # generates random dice number

echo $((number1+number2)) # adds random dice number and prints it

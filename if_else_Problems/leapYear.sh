#!/bin/bash

isleap="false"

read -p "Enter year (yyyy) : " yy

# find out if it is a leap year or not

if [ $((yy % 4)) -ne 0 ] ;then
   : #  not a leap year
elif [ $((yy % 400)) -eq 0 ] ; then
   # yes, it's a leap year
   isleap="true"
elif [ $((yy % 100)) -eq 0 ] ; then
   : # not a leap year
else
   # it is a leap year
   isleap="true"
fi
if [ "$isleap" == "true" ];
then
   echo "$yy is leap year"
else
   echo "$yy is NOT leap year"
fi

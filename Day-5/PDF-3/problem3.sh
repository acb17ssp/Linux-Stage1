#!/bin/bash -x
read -p "Enter year (yyyy) : " year

if [ $year -gt 999 ] && [ $year -lt 10000 ]
then
	if [ $((year % 4)) -ne 0 ]
	then
	   echo "Not a leap year-A"
	elif [ $((year % 400)) -eq 0 ]
	then
	   isleap="true"
	elif [ $((year % 100)) -eq 0 ]
	then
	   echo "Not a leap year-B"
	else
	   isleap="true"
	fi

	if [ "$isleap" == "true" ]
	then
	   echo "$year is leap year"
	else
	   echo "$year is not a leap year"
	fi
else
	echo "It is not a four digit number"
fi

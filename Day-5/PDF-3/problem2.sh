#!/bin/bash -x
read -p "Enter day: " day
read -p "Enter month: " month
if [ $month -gt 2 ] && [ $month -lt 7 ]
then
	if [ $month -eq 3 ] && [ $day -lt 20 ]
	then
		echo "False"
	elif [ $month -eq 6 ] && [ $day -gt 20 ]
	then
		echo "False"
	elif [ $day -lt 1 ] && [ $day -gt 31 ]
	then
		echo "Date not valid"
	else
		echo "True"
	fi
else
	echo "False"
fi

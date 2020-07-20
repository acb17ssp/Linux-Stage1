#!/bin/bash -x
read -p "Enter any number from 1/10/100/1000/10000/100000: " number
if [ $number -eq 1 ]
then
	echo "Units"
elif [ $number -eq 10 ]
then
	echo "Tens"
elif [ $number -eq 100 ]
then
	echo "Hundreds"
elif [ $number -eq 1000 ]
then
	echo "Thousands"
elif [ $number -eq 10000 ]
then
	echo "Ten-Thousands"
elif [ $number -eq 100000 ]
then
	echo "Lakhs"
else
	echo "Wrong input - Try again!"
fi

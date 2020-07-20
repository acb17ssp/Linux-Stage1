#!/bin/bash
echo "Think of a number between 1 to 100"
low=0
high=100
mid=50
while [ $low -le $high ]
do
	echo "Type 1 if the number is less than $mid"
	echo "Type 2 if the number is greater than $mid"
	echo "Type 3 if the number is equal to $mid"
	read options
	case $options in
	1)
		high=$(($mid-1))
	;;
	2)
		low=$(($mid+1))
	;;
	3)
		echo "The number is: $mid, I guessed it right!"
		exit
	;;
	*)
		echo "Oops! Could not guess"
		exit
	;;
	esac
	mid=$((($low+$high)/2))
done

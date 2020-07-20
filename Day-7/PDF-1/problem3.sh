#!/bin/bash -x
read -p "Enter a number: " num
original=$num
if [ $num -lt 2 ]
then
	echo "Not valid"
else
	counter=0
	while [ $(($num%2)) -eq 0 ]
	do
		array[((counter++))]=2
		num=$(($num/2))
	done
	for((i=3; $(($i*$i))<=num; ((i+=2)) ))
	do
		while [ $(($num%$i)) -eq 0 ]
		do
			array[((counter++))]=$i
			num=$(($num/$i))
		done
	done
	if [ $num -gt 2 ]
	then
		array[((counter++))]=$num
	fi
	echo ${array[@]}
fi

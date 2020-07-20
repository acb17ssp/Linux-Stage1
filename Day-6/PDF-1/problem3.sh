#!/bin/bash -x
read -p "Enter a number: " num
i=2
flag=0

for(($i; $i <= $(($num/2)); i++))
do

	if [ $(($num % $i)) -eq 0 ]
	then
		flag=1
	fi
done
if [ $flag -eq 1 ]
then
	echo "The number is not prime"
else
	echo "The number is prime"
fi

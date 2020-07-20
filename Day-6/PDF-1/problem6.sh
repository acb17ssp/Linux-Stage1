#!/bin/bash -x
read -p "Enter a number: " num
while [ $((num%2)) -eq 0 ]
do
	num=$(($num/2))
done
for((i=3;i<=$(($num**$((1/2))));i=$(($i+2))))
do
	while [ $(($num % $i)) -eq 0 ]
	do
		num=$(($num/$i))
	done
done
if [ $num -gt 2 ]
then
	echo $n
fi

#!/bin/bash -x
read -p "Enter value 1: " var1
read -p "Enter value 2: " var2
#if (($var1 >= $var2)) - this is the second way
if [ $var1 -gt $var2 ]
then
	echo "$var1 is greater than or equal to $var2"
else
	echo "$var1 is less than $var2"
fi

#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

value1=$(($a+$b*$c))
value2=$(($a%$b+$c))
value3=$(($c+$a/$b))
value4=$(($a*$b+$c))
max=0
min=0
if [ $value1 -gt $value2 ] && [ $value1 -gt $value3 ] && [ $value1 -gt $value4 ]
then
	max=$value1
	echo "Maximum value: $max"
elif [ $value2 -gt $value1 ] && [ $value2 -gt $value3 ] && [ $value2 -gt $value4 ]
then
	max=$value2
	echo "Maximum value: $max"
elif [ $value3 -gt $value1 ] && [ $value3 -gt $value2 ] && [ $value3 -gt $value4 ]
then
	max=$value3
	echo "Maximum value: $max"
elif [ $value4 -gt $value1 ] && [ $value4 -gt $value2 ] && [ $value4 -gt $value3 ]
then
	max=$value4
	echo "Maximum value: $max"
else
	echo "Maximum value not found"
fi

if [ $value1 -lt $value2 ] && [ $value1 -lt $value3 ] && [ $value1 -lt $value4 ]
then
	min=$value1
	echo "Minimum value: $min"
elif [ $value2 -lt $value1 ] && [ $value2 -lt $value3 ] && [ $value2 -lt $value4 ]
then
	min=$value2
	echo "Minimum value: $min"
elif [ $value3 -lt $value1 ] && [ $value3 -lt $value2 ] && [ $value3 -lt $value4 ]
then
	min=$value3
	echo "Minimum value: $min"
elif [ $value4 -lt $value1 ] && [ $value4 -lt $value2 ] && [ $value4 -lt $value3 ]
then
	min=$value4
	echo "Minimum value: $min"
else
	echo "Value not found"
fi


#!/bin/bash -x
read -p "Enter n: " arg
x=1
while [ $x -lt $(($arg+1)) ]
do
	powers=$((2**x))
	x=$((x+1))
	echo $powers
done

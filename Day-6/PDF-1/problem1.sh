#!/bin/bash -x
read -p "Enter n: " arg
for ((x=1; x<=arg; x++))
	do
		powers=$((2**x))
		echo $powers
done

#!/bin/bash
read -p "Enter n: " arg
harmonic=0
for ((x=1; x<=arg; x++))
do
	harmonic=$(($harmonic + $((1/x))))
	echo $harmonic
done
echo "Harmonic Value: $harmonic"

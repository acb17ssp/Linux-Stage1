#!/bin/bash -x
heads=0
tails=0
valid=true
while [ valid ]
do

	randomNum=$((RANDOM%2))
	if [ $randomNum -eq 0 ]
	then
		echo "Heads"
		heads=$(($heads+1))
	else
		echo "Tails"
		tails=$(($tails+1))
	fi

	if [ $heads -eq 11 ] || [ $tails -eq 11 ]
	then
		break;
	fi
done
echo "Heads: $heads, Tails: $tails"

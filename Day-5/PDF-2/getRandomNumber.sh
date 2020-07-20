#!/bin/bash -x
for digit in {1..10}
do
	singleDigit=$(( RANDOM%10 ))
	echo $singleDigit
done

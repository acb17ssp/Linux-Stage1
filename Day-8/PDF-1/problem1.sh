#!/bin/bash -x
declare -A numbers
for ((i=1;i<=6;i++))
do
	numbers[$i]=0
done
valid=true
while [ $valid ]
do
	randomNum=$((RANDOM%6+1))
	((numbers[$randomNum]++))

	if [ ${numbers[$randomNum]} -eq 10 ]
	then
		max=$randomNum
		break
	else
		echo "Not"
	fi
done
echo "The Key value whose max(10) is: $max"
echo ${!numbers[@]} "=" ${numbers[@]}

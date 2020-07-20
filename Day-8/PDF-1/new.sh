#!/bin/bash -x
max=0
randomNum=$((RANDOM%6+1))
declare -A dice_roll
i=1
for i in ${!dice_roll[@]}
do
	if [ ${dice_roll[$randomNum]} -gt $max ]
	then
		max=${dice_roll[$i]}
		max1=$i
	fi
	i=$(($i+1))
done
echo $max

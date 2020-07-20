#!/bin/bash -x
for((i=0;i<=9;i++))
do
	randomNum=$((RANDOM%900+100))
	Numbers[$i]=$randomNum
done

for v in ${Numbers[@]}
do
	echo $v
done
printf '%s\n' ${Numbers[@]} | sort -nr | head -2
printf '%s\n' ${Numbers[@]} | sort -nr | tail -2

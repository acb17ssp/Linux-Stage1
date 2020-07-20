#!/bin/bash -x
for((i=1;i<=100;i++))
do
	Numbers[$i]=i
	div=$((${Numbers[i]}%11))
	if [ $div -eq 0 ]
	then
		NewNumbersArray[$i]=$i
	else
		echo "Default"
	fi
done
echo ${NewNumbersArray[@]}

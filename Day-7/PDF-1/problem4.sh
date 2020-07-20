#!/bin/bash -x
for((i=0;i<=2;i++))
do
	read -p "Enter the integer: " val
	Numbers[$i]=$val
done
echo ${Numbers[@]}
if [ $((${Numbers[0]}+${Numbers[1]}+${Numbers[2]})) -eq 0 ]
then
	echo "Sum is zero"
else
	echo "Sum is not zero"
fi

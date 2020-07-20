#!/bin/bash -x
min=1000
max=1
secondMin=1000
secondMax=1
for((i=0;i<10;i++))
do
	num=$((RANDOM%900+100))
	randomArray[i]=$num
	if [ $num -gt $max ]
	then
		max=$num
	fi
	if [ $num -lt $min ]
	then
		min=$num
	fi
done
for((i=0;i<10;i++))
do
	value=${randomArray[i]}
	if [ $value -eq $min ] || [ $value -eq $max ]
	then
		continue
	fi
	if [ $value -gt $secondMax ]
	then
		secondMax=$value
	fi
	if [ $value -lt $secondMin ]
	then
		secondMin=$value
	fi
done
echo ${randomArray[@]}
echo "Second smallest element: $secondMin"
echo "Second largest element: $secondMax"

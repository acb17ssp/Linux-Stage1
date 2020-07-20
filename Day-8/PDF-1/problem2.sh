#!/bin/bash -x
declare -A dates
month=(JAN FEB MAR APR MAY JUN JUL AUG SEPT OCT NOV DEC)
for((i=1;i<=50;i++))
do
	randomNum=$((RANDOM%12+1))
	arr[$(($randomNum-1))]="${arr[$randomNum-1]} User-$i"
	dates[${month[$(($randomNum-1))]}]=${arr[$(($randomNum-1))]}
done
echo "Birthday: "
for key in ${!dates[@]}
do
	echo "$key ":${dates[$key]}
done

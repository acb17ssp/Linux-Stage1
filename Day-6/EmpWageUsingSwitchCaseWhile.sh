#!/bin/bash -x
isPartTime=1
isFullTime=2;
empRate=20;
randomValue=$((RANDOM%3))
counter=0
while [ $counter -le 5 ]
do
	case $randomValue in
	$isFullTime)
		empHrs=8
	;;
	$isPartTime)
		empHrs=4
	;;
	*) echo "Not processed"
	empHrs=0
	;;
	esac
	(( counter ++ ))
done
salary=$(($empHrs*$empRate));
echo "Salary: $salary"

#!/bin/bash -x
isPartTime=1
isFullTime=2;
empRate=20;
randomValue=$((RANDOM%3))
for ((counter=1; counter<=5; counter++))
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
done
salary=$(($empHrs*$empRate));
echo "Salary: $salary"

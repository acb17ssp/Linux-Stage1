#!/bin/bash -x
isPartTime=1
isFullTime=2;
empRate=20;
randomValue=$((RANDOM%3))

function myFunc(){
	salary=$(($empHrs*$empRate));
}

case $randomValue in
$isFullTime)
	empHrs=8
	myFunc
;;
$isPartTime)
	empHrs=4
	myFunc
;;
*) empHrs=0
	myFunc
;;
esac
echo "Salary: $salary"

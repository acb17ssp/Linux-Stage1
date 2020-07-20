#!/bin/bash -x
isPartTime=1
isFullTime=2;
empRate=20;
for ((counter=1; counter<=5; counter++))
do
randomValue=$((RANDOM%3))

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
salary=$(($empHrs*$empRate));
declare -A emps
emps[$counter]="$salary"
done

echo ${!emps[@]}" = "${emps[@]}

#!/bin/bash -x
isPresent=1
partTime=2
fullTimeWorkingHrs=8
partTimeWorkingHrs=4
perHrRate=10
randomCheck=$(( RANDOM%3 ))
if [ $isPresent -eq $randomCheck ]
then
	echo "Full time employee"
	salary=$(( $fullTimeWorkingHrs*$perHrRate ))
	echo $salary
elif [ $partTime -eq $randomCheck ]
then
	echo "Part time employee"
	salary=$(( $partTimeWorkingHrs*$perHrRate ))
	echo $salary
else
	echo "Employee Absent"
fi

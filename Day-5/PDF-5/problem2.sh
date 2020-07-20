#!/bin/bash -x
read -p "Enter a number to know the day: " number
one=1
two=2
three=3
four=4
five=5
six=6
seven=7
case "$number" in
$one)
	echo "Monday"
;;
$two)
	echo "Tuesday"
;;
$three)
	echo "Wednesday"
;;
$four)
	echo "Thursday"
;;
$five)
	echo "Friday"
;;
$six)
	echo "Saturday"
;;
$seven)
	echo "Sunday"
;;
*)
	echo "Day not Found!"
;;
esac

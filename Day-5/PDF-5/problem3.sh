#!/bin/bash -x
read -p "Enter 10/100/1000/10000/100000: " number
one=1
ten=10
hundred=100
thousand=1000
tenThousand=10000
lakh=100000
case "$number" in
$one)
	echo "Unit"
;;
$ten)
	echo "Tens"
;;
$hundred)
	echo "Hundreds"
;;
$thousand)
	echo "Thousands"
;;
$tenThousand)
	echo "Ten thousands"
;;
$lakh)
	echo "Lakhs"
;;
*)
	echo "Value not found"
;;
esac

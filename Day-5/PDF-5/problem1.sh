#!/bin/bash -x
randomNum=$((RANDOM%9))
zero=0
one=1
two=2
three=3
four=4
five=5
six=6
seven=7
eight=8
nine=9
case "$randomNum" in
$zero)
	echo "Zero"
;;
$one)
	echo "One"
;;
$two)
	echo "Two"
;;
$three)
	echo "Three"
;;
$four)
	echo "Four"
;;
$five)
	echo "Five"
;;
$six)
	echo "Six"
;;
$seven)
	echo "Seven"
;;
$eight)
	echo "Eight"
;;
$nine)
	echo "Nine"
;;
*)
	echo "Default"
;;
esac

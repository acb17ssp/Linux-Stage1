#!/bin/bash -x
read -p "Enter the number: " num
read -p "Enter the second number: " num1
x=0
rev=0
temp=$num

x1=0
rev1=0
temp1=$num1


function checkReverseForNumberOne(){
	while [ $num -gt 0 ]
   do
       x=$(( $num % 10 ))
       num=$(( $num / 10 ))
       rev=$( echo ${rev}${x} )
   done
}

function checkReverseForNumberTwo(){
   while [ $num1 -gt 0 ]
   do
       x1=$(( $num1 % 10 ))
       num1=$(( $num1 / 10 ))
       rev1=$( echo ${rev1}${x1} )
   done
}

function palindrome(){

	checkReverseForNumberOne
   checkReverseForNumberTwo

	if [ $temp -eq $rev ] && [ $temp1 -eq $rev1 ]
	then
		echo "Both Numbers are palindrome"
	elif [ $temp -eq $rev ]
	then
	    echo "$temp is palindrome, other one is not"
   elif [ $temp1 -eq $rev1 ]
   then
       echo "$temp1 is palindrome, other one is not"
	else
		echo "None of them are palindromes"
	fi
}

palindrome

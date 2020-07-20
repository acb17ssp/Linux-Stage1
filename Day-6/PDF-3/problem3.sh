#!/bin/bash -x
read -p "Enter the number: " num
x=0
rev=0
temp=$num


function checkReverseForNumberOne(){
	while [ $num -gt 0 ]
   do
       x=$(( $num % 10 ))
       num=$(( $num / 10 ))
       rev=$( echo ${rev}${x} )
   done
}

function palindrome(){

	checkReverseForNumberOne

	if [ $temp -eq $rev ]
	then
		 primeNum=`factor $temp|wc -w`
		 if [ $primeNum -eq 2 ]
		 then
		    echo "$temp is palindrome and prime"
		 else
			 echo "$temp is palindrome, but not prime"
		 fi
   else
		echo "Number is not palindrome"
	fi
}

palindrome

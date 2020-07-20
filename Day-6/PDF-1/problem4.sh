#!/bin/bash -x
read -p "Enter the lower-bound: " num1
read -p "Enter the upper-bound: " num2

i=2
flag=0

for((x=$num1;x<=$num2;x++))
do
	for(($i;$i<=$(($x/2));i++))
	do
		if [ $(($x % $i)) -eq 0 ]
		then
			flag=1
		fi
	done

   if [ $flag -eq 1 ]
   then
      echo "$x is not prime"
   else
      echo "$x number is prime"
   fi

done

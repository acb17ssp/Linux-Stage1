#!/bin/bash -x
read -p "Enter 0 or 1: " userInput
if [ $userInput -eq 0 ]
then
   echo "Heads"
else
	echo "Tails"
fi

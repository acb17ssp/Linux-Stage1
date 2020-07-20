#!/bin/bash -x
money=100
valid=true
bet=1
while [ $valid ]
do

	randomNum=$((RANDOM%2))
	if [ $randomNum -eq 0 ]
	then
		money=$(($money-50))
		bet=$(($bet-1))
		if [ $money -eq 0 ]
		then
			echo "All bets lost"
	  		break;
		fi
	elif [ $randomNum -eq 1 ]
	then
      money=$(($money+50))
		if [ $money -eq 200 ]
      then
         echo "No. of Bets won: $bet"
			break;
   	fi
   bet=$(($bet+1))
	else
		echo "Not processed"
	fi
done

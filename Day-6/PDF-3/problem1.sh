#!/bin/bash -x
read -p "Select 1 for Celsius and 0 for Farhenheit: " userInput
function myFarh(){
	valid=true
	while [ valid ]
	do
		read -p "Enter temperature (farhn): " farh
		if [ $farh -gt 31 ] && [ $farh -lt 213 ]
		then
			case $farh in
			$farh)
				cel=$(($(($farh-32))*1)) #instead of 1 it should be 0.56
			;;
			*)
				echo "Not processed"
			esac
			break;
		else
			echo "Value should be in between 32 and 212"
			myFarh
		fi
	done
	echo "Farhn to Celsius: $cel"
}

function myCel(){
   valid=true
   while [ valid ]
   do
      read -p "Enter temperature (cel): " cels
      if [ $cels -gt 0 ] && [ $cels -lt 100 ]
      then
         case $cels in
         $cels)
            farhn=$(($(($cels*1))+32)) #instead of 1 it should be 9/5
         ;;
         *)
            echo "Not processed"
         esac
         break;
      else
         echo "Value should be in between 0 and 100"
         myCel
      fi
   done
   echo "Celsius to Farhn: $farhn"
}


if [ $userInput -eq 0 ]
then
	myFarh
else
	myCel
fi




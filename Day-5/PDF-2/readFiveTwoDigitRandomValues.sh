#!/bin/bash -x
for twoDigitNumbers in {1..5}
do
	randomTwoDigit=$(( RANDOM%90+10 ))
	sumOfRandomDigits=$(( $sumOfRandomDigits+$randomTwoDigit ))
done
average=$(( $sumOfRandomDigits/5 ))
echo "Sum: $sumOfRandomDigits"
echo "Avg: $average"

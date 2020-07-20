#!/bin/bash -x
read -p "Enter the number to get converted: " number

feetToInch=$(($number*12))
inchToFeet=$(($number/12))
feetToMeter=$(($number/3))
meterToFeet=$(($number*3))

echo "Feet to Meter: $feetToInch"
echo "Inch to Feet: $inchToFeet"
echo "Feet to Meter: $feetToMeter"
echo "Meter to Feet: $meterToFeet"

#!/bin/bash -x
read -p "Enter length: " length
read -p "Enter width: " width
area=$(( length*width ))
areaInMeters=$(( area/9 ))
manyPlots=$(( areaInMeters*25 ))
convertToAcres=$(( manyPlots/4046 ))
echo "Area of 1 plot in meter-sq is $areaInMeters"
echo "Area of 25 plots is $convertToAcres"

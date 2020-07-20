#!/bin/bash -x
read -p "Enter the number(inches) to convert: " inches
ft=$(( inches/12 ))
echo "The feet value is: $ft"


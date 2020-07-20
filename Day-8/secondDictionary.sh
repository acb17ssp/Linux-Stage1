#!/bin/bash
declare -A sounds

for((i=1; i<=3; i++))
do

	read -p "Enter key: " key
	read -p "Enter value: " value
	sounds[$key]=$value
done

# ! is for key.
# so here the output will be like key and value pair
echo ${!sounds[@]} "=" ${sounds[@]}

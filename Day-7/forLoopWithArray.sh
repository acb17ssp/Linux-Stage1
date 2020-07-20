#!/bin/bash -x
for ((i=0;i<=5;i++))
do
	Numbers[$i]=$i
done
echo ${Numbers[@]}

#!/bin/bash -x
N=5
i=1
max=0
min=0
while [ $i -le $N ]
do
  randomNum=$((RANDOM%899+100))
  if [ $i -eq 1 ]
  then
      max=$randomNum
  else
      if [ $randomNum -gt $max ]
      then
        max=$randomNum
      fi
  fi

  if [ $i -eq 1 ]
  then
    min=$randomNum
  else
	 if [ $randomNum -lt $min ]
      then
        min=$randomNum
      fi
  fi

 i=$((i + 1))

done

echo "Maximum Value: $max"
echo "Minimum Value: $min"

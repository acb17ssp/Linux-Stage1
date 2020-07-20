#!/bin/bash -x
firstRandomNumber=$((RANDOM%4))
secondRandomNumber=$((RANDOM%4))
additionResult=$(( $firstRandomNumber+$secondRandomNumber ))
echo $additionResult

#!/bin/bash -x
cat data.csv | awk '{ sum+=$7 }END{ print sum }'
echo 'Now aggregate is: ';
cat data.csv | grep CAPTAIN | awk '{ sum+=$7 }END{ print sum*100/3935229 }';


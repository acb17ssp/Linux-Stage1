#!/bin/bash -x
cat data.csv | awk '$4>200000 { print $2 " " $7}'

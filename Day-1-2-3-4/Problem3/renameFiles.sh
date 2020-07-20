#!/bin/bash -x
for file in `ls *.log.1`;
do
	fileName=`echo $file | awk -F. '{print $1}'`;
	echo $fileName;
	renamedFile=$fileName-"`date +"%d%m%Y"`".log;
	echo $renamedFile;
	mv $file $renamedFile;
done


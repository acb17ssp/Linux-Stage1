#!/bin/bash -x
for file in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	echo $folderName;
	if [ -d $folderName ];
	then
		echo 'folder already exists'
		rm -R $folderName;
	fi
	mkdir $folderName;
	mv $file $folderName;
	echo 'moved the files to the respective folders'
done

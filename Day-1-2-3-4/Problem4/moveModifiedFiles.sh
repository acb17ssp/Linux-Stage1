#!/bin/bash -x
for file in `ls *`;
do
	findFile=`echo $file | find . -mtime -7`;
	echo $findFile;
	folderName=cd '/c/Users/sreer/BridgeLabzSolutions/Stage1-Linux_Workshop/TerminalCommands/linux-content/Problem4/Backup';
	mv $findFile $folderName;
done

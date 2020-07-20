#!/bin/bash -x
dir=/c/Users/sreer/BridgeLabzSolutions/Stage1-Linux_Workshop/TerminalCommands/linux-content/Problem9/temp
if [ ! -d $dir ];
then
	mkdir $dir;
elif [ -d $dir ];
then
	echo "$dir already exists"
fi


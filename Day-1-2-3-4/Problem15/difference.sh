#!/bin/bash -x
mkdir original;
mkdir updated;
touch original-file.txt;
touch updated-file.txt;
cp original-file.txt original;
cp updated-file.txt updated;
diff original-file.txt updated-file.txt;
mkdir original-backup;
cp original-file.txt original-backup;
cp updated-file.txt original/original-file.txt;



#! /usr/bin/bash
#author suryAnsh

count=1
echo this is loop script, output will be displayed below
names=("$@")
n=$#
i=0
while [ $i -lt $n ]
do
	echo '*' ${names[i]} is on $count line
	i=$((i+1))
	count=$((count+1))
	sleep 3
done
echo
echo author:suryAnsh
echo done, loop completed and terninated

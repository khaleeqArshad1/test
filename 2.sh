#!/bin/bash

#check -c is present or not
if [ $1 != -c ]
then 
	#read name in command line
	name=$2
	#echo $name
	#read file
	file=$1
	set ls -li $file
	#echo $4
	
	#set cheating
	if [ $4 = $name ]
	then
		echo "CHEATING = 0"
	else
		echo "CHEATING = 1" 
	fi

else
	file=$2
	name=$3
	file2=$4
	name2=$5
	#read file
	set ls -li $file
	fileusername=$4
	if [ $fileusername = $name ]
	then
		set ls -li $file2
		fileusername2=$4
		if [ $fileusername2 = $name2 ]
		then
			diff $file $file2
		else
			echo "Uername of file 2 is not the owner of file"
		fi		
	else
		echo "User of file 1 is not the owner of file"
	fi
fi
#!/bin/bash
expr $1 + 1 2>/dev/null
if [ $? -eq 0 ]
then 
expr $2 + 1 2>/dev/null
	if [ $? -eq 0 ]
	then 
		echo "Addition : " `expr $1 + $2`
		echo "Sabtraction : " `expr $1 - $2`
		echo "Multiplication : " `expr $1 \* $2`
		echo "Division : " `expr $1 / $2`
	else
		echo "you enter wrong input 2nd" 
	fi
else
	echo "you enter wrong input 1st"
fi 
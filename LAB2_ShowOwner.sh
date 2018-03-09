#!/bin/bash

showAllOwners(){

    username=$1
  for i in `ls`
do

set `ls -li $i`
shift
    if [ -f $i ]
then 
	if [ $username = $3 ]
	then
        echo "OWNER:" $3
	echo  "FileName:"$9
        
	fi
fi
done


}

if [ $# -eq 0 ]
then
echo "No Arguments provided!"

fi


if [ $# -gt 1 ]
then
echo "INVALID!"

fi
cd ~/
showAllOwners $1
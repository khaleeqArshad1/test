#!/bin/bash
count=1

  for i in `more -1 $1`
	do

	x=$(($count%2))

		  if [ $x -eq 0 ]
			then
		      
		        `touch evenfile.txt`
			echo $i 1>>evenfile.txt
			count=`expr $count + 1`

			else
		      
		         `touch oddfile.txt`
			echo $i 1>>oddfile.txt
			count=`expr $count + 1`

		  fi
   done
echo "evenfile Created!"
echo "oddfile Created!"
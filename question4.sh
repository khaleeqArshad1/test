#!/bin/bash

read -p "Enter fileName: " fname



if [ -f $fname ]
then
	echo "After removing duplicate lines file is:"
	echo ""

		       sort -u $fname


	echo ""
	echo "_________DUPLICATE LINES REMOVED SUCCESSFULLY________"

else
	echo "Sorry File does not exist!"
fi
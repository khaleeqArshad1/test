#!/bin/bash
arr=( `cat "file.txt"` )
echo "Elements of array : " ${arr[*]}
echo "Lenght of array : " ${#arr[*]}
echo "3rd Elements of array : " ${arr[2]}
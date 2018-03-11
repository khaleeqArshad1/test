for i in `ls`
do
file=$i
if [ -d $file ]
then
`mv $file ${file##*\.} `          
else
`mkdir ${file##*\.} `
`mv $var ${file##*\.} `            
fi
done
echo "ALL FILES MOVED"
#!/bin/bash
unix=(Debian "Red Hat" Ubantu Suse Fedora)

echo "Elements of Array : " ${unix[*]}

echo "Size of Array : " ${#unix[*]}

echo "Lenght of Element at index 2 : : " ${unix[2]}

echo  ${unix[*]:3:2}

echo "After Replace : " ${unix[*]/"Ubantu"/"Sco"}

temp=(${unix[*]} "Aix" "Hp-Ux")
unix=(${temp[*]})

echo "After Adding : " ${unix[*]}

unset unix[2]

linux=(${unix[*]})

echo "Elements of linux : " ${lniux[*]}

bash=(${unix[*]} ${linux[*]})

echo "Elements of bash : " ${bash[*]}

unset unix[*]

unset linux[*]
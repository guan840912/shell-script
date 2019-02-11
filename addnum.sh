#!/bin/bash
#Description:密碼驗證程式，密碼只能錯三次.
#Write by : Guan YeBo
#Version v1.0.0
x=0
y=0

until [ $y -eq 1 ]
do
read -s -p " Please Setup your password : " password
	if [ -z $password ]  
	then
	echo "Password CAN NOT BE EMPTY !!! " 
	
	elif [ -n $password ]
	then
	echo " OK!!!"
	let y=$y+1
	fi
done

echo "==================================================================="

until [ $x -eq 3 ]
do
read -s -p "Please Input Your Password : " a 
echo ""
if [ "$password" = "$a" ]
	then
	echo "Welcome to back !!! "
	exit 0	
elif [ "$password" != "$a" ]
	then
	echo " Password Input Eorror !!! " 
	let x=$x+1	
fi

done

exit 0

#!/bin/bash
#Description:let user input number .To count number ...
#Write by : Guan YeBo
#Version : v1.0.0

until [ -n $a ] && [[ "$a" =~ ^[0-9]+$ ]]
do
read -p "Please input number you want : " a
done
k=0
until [ $k -ge 1000  ]
do
 	for(( x=1 ; x<=1000 ; x=x+1 ))
	do
		if [ $k -lt 1000 ]
		then
		echo -n -e " $k \t"
  			let k=$a*$x	
		else 
		break
		fi
	done
done

if [ $k -eq 1000 ] 
then
echo "$k"
exit 0
else
echo ""
fi

exit 0


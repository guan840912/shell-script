#!/bin/bash
#descrption:BMI主程式
#write by Guan Ye Bo
#version v1.0.0
read -p "請輸入你的身高(用公分表示):" a
[ -z $a ] && echo "Input ERROR or Empty Value " && exit 1
read -p "請輸入你的體重(用公斤表示):" b
[ -z $b ] && echo "Input ERROR or Empty Value " && exit 1
expr $a "+" 10 &>/dev/null
if [ $? -eq 0 ] 
then
	continue
else
	echo " Input ERROR or Empty Value " && exit 1
fi
expr $b "+" 10 &>/dev/null

if [ $? -eq 0 ]  
then
	echo "你的身高是: $a 公分 你的體重是: $b 公斤 " 
	export a
	export b 
	export c
	bash /root/BMIcount.sh
	c=`bash /root/BMIcount.sh`
	c=${c%.*}
	c=${c##* }
else
	echo "please input number"
	exit 1
fi


if [ $c -ge 25 ]
then
	echo "超重 請減重!!!"
elif [ $c -le 18 ]
then 
	echo "過輕 請多吃點!!!"
else 
	echo "完美身材 !!! 請繼續維持!!!"
fi

exit 0

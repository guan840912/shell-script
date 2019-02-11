#!/bin/bash
#descrption:面積計算副程式
#write by Guan Ye Bo
#version v1.0.0


varChoose=$varSelect

case $varChoose in
	1)
	read -p "請輸入單位(平方公尺): " c
	var1=$c
	[ -z $var1 ] && echo "輸入錯誤" && exit 1
	expr $var1 "+" 10 &>/dev/null
	if [ $? -eq 0 ]
	then
	varA=$(echo "scale=5; $c*0.3025" | bc )
	echo "$c (平方公尺) = $varA  (坪)"
	else
	echo "輸入錯誤" && exit 1
	fi
	;;
	2)
	read -p "請輸入單位(坪): " d
	var2=$d
	[ -z $var2 ] && echo "輸入錯誤" && exit 1
	expr $var2 "+" 10 &>/dev/null
	if [ $? -eq 0 ]
	then
	varB=$(echo "scale=5; $d*3.3058" | bc )
	echo "$d (坪) = $varB (平方公尺)"
	else
    echo "輸入錯誤" && exit 1
	fi
	;;
	*)
	echo "Please input number!!!"
esac

exit 0

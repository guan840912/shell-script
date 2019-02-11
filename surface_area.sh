#!/bin/bash
#descrption:面積計算主程式
#write by Guan Ye Bo
#version v1.0.0


read -p "請輸入選擇要轉換的選項 (1)平方公尺轉坪 (2)坪轉平方公尺: " varSelect
[ -z $varSelect ] && echo "選擇參數錯誤 " && exit 1
expr $varSelect "+" 10 &>/dev/null
if [ $? -eq 0 ]
then
export varSelect

case $varSelect in
	1)
	bash /root/sucount.sh
	;;
	2)
	bash /root/sucount.sh
	;;
	*)
	echo "please number 1 or number 2" && exit 1
esac
else
	echo "please number 1 or number 2" && exit 1
fi


exit 0

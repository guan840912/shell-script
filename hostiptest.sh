#!/bin/bash
#Description: 依使用者喜好輸入網段 起始ip結束
#Write by Guan YeBo
#Version: v1.0.0
read -p "請輸入你想要PING的網段: " ipa
read -p "ipStart : " x 
read -p "ipEnd : " y 
ip=${ipa%.*}
echo "==== LAN HOST CHECKER ===="

for (( z=$x ; z<=$y ;z=z+1 ))
do  
    echo -n "pinging $ip.$z... "
    ping -c 1 -i 0.2 -W 1 $ip.$z &> /dev/null
    if [ $? -eq 0 ] 
    then
        echo "ONLINE."
    else
        echo ""
    fi  
done

echo "======== SCAN END ========"

exit 0


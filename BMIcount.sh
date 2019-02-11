#!/bin/bash
#descrption:BMI副程式
#write by Guan Ye Bo
#version v1.0.0

let varM=$a*$a

varM=$(echo "scale=3; $varM/10000" | bc)
varK=$b
varB=$(echo "scale=3; $varK/$varM" | bc)
echo "您的BMI值為 : $varB "
c=$varB
exit 0

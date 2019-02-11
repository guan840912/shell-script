#!/bin/bash
#descrption:99table
#write by Guan Ye Bo
#version v1.0.0
varN=1
while [ $varN -le 9 ]
do
	for (( x=1 ; x<=9 ; x=x+1 ))
	do
		let varA=$x*$varN
		echo -ne " $varN * $x = $varA \t"
	done
		echo ""
		let varN=$varN+1
done

exit 0 

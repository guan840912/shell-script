#!/bin/bash
#
#
#
#
#


for (( x=1 ; x<9 ; x=x+1 ))
do  
 for (( y=9-$x ; y>0 ; y=y-1 ))
	do 
        echo -n "* "
	done
 echo  ""
done
exit 0

 

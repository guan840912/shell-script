#!/bin/bash
#
#
#
#
#
for(( x=1 ; x<9 ; x=x+1 ))
do
    if [ $x -lt 2 -o $x -gt 7 ] 
     then 
      echo "* * * * * * * *"
      
    else
      echo "*             *"
      
    fi
done

exit 0


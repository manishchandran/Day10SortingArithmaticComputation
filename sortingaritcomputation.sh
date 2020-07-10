#!/bin/bash -x
#uc9
for ((i = 0; i<4; i++)) 
do
      
    for((j = 0; j<4-i-1; j++)) 
    do
      
        if [ ${Array[j]} -gt ${Array[$((j+1))]} ] 
        then
            # swap 
            temp=${Array[j]} 
            Array[$j]=${Array[$((j+1))]}   
            Array[$((j+1))]=$temp 
        fi
    done
done
echo ${Array[@]}


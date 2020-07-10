#!/bin/bash -x
#uc8
for ((i = 0; i<4; i++)) 
do

    for((j = 0; j<4-i-1; j++)) 
    do

        if [ ${Array[j+1]} -gt ${Array[$((j))]} ] 
        then
            # swap 
            temp=${Array[j+1]} 
            Array[$j+1]=${Array[$((j))]}   
            Array[$((j))]=$temp 
        fi
    done
done
echo ${Array[@]}

#!/bin/bash -x
#uc1
read -p "Enter a value for a:" a
read -p "Enter a value for b:" b
read -p "Enter a value for c:" c

#uc2
AO1=$((a+b*c)) #Arithmatic Operation 1

#uc3
AO2=$((a*b+c))

#uc4
AO3=$((c+a/b))

#uc5
AO4=$((a%b+c))

#uc6
declare -A computation
computation[0]="$AO1"
computation[1]="$AO2"
computation[2]="$AO3"
computation[3]="$AO4"

#uc7
for((i=0;i<=3;i++))
do
	Array[$i]=${computation[$i]}
done

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



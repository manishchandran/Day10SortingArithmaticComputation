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



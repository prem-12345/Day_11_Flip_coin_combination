#!/bin/bash

#"FLIP COIN COMBINATION PROBLEM"

#UC_1:COIN FLIP TO DISPLAY HEAD OR TAIL

X=$((RANDOM%2))

if [[ $x -eq 0 ]]
then
	echo "Heads win"
else
	echo "Tails win"
fi

#UC_2:COIN FLIP & STORE THE SINGLET COMBINATION IN DICTIONARY & FIND PERCENTAGE

declare -A singlet

singleHead=0
singleTail=0

for ((i=0;i<50;i++))
do
	flip=$(($RANDOM%2))
	if  [[ $flip -eq 0 ]]
	then
		singlet[$i]=0
		((singleHead++))
	else
		singlet[$i]=1
		((singleTail++))
	fi
done

echo "percentage of heads for singlet dictionary:"$singleHead%
echo "percentage of tails for singlet dictionary:"$singleTail%

#UC_3:STORE THE DOUBLET COMBINATION & PERCENTAGE

declare -A singlet
declare -A doublet


singleHead=0
singleTail=0
DoubleHead=0
DoubleTail=0

for ((i=0;i<50;i++))
do
	flip=$((RANDOM%2))
	flip1=$((RANDOM%2))
	flip2=$((RANDOM%2))

	if [[ $flip -eq 0 ]]
	then
		 singlet[$i]=0
                ((singleHead++))
        else
                singlet[$i]=1
                ((singleTail++))
        fi
done
for ((i=0;i<50;i++))
do
	if [[ $flip1 -eq 0 ]] && [[ $flip2 -eq 0 ]]
	then
		((DoubleHead++))
		double[$i]="HH"

	elif [[ $flip1 -eq 1 ]] && [[ $flip2 -eq 1 ]]
        then
                ((DoubleTail++))
                double[$i]="TT"
	fi
done

echo "percentage of heads for singlet dictionary:"$singleHead%
echo "percentage of tails for singlet dictionary:"$singleTail%
echo ${doublet[@]}

echo "percentage of heads for doublet dictionary:"$DoubleHead%
echo "percentage of tails for doublet dictionary:"$DoubleTail%

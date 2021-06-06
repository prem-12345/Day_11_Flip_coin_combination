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

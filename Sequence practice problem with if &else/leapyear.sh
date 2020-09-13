#!/bin/bash
read -p "Enter the year (yyyy) " yy
leap="true"

if [ $(( yy % 400 )) -eq 0 ]
	then
	leap="true"

elif [ $(( yy % 100 )) -eq 0 ]
	then
	leap="false"
elif [ $(( yy % 4 )) -eq 0 ]
	then
	leap="true"
fi
if [ "$leap" == "true" ]
	then
	echo "Leap year"
	else
	echo "Not a Leap year"
fi

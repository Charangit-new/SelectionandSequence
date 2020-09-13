#!/bin/bash
echo "5 Random numbers : "
for (( i=1;i<=5;i++ ))
do
	num=$(( RANDOM%900+100 ))
	echo "$num"
	if [ $i -eq 1 ]
	then
	min=$num
	max=$num
	elif [ $num -le $min ]
		then min=$num
	elif [ $num -ge $max ]
	       then   max=$num
	fi
done
echo "Minimum=$min"
echo "Maximum=$max"

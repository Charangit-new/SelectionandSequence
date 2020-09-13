#!/bin/bash
sum=0
for (( i=1;i<=5 ;i++ ))
do
	random=$(( RANDOM%100 ))
	sum=`expr $sum + $random`
done
echo "The sum of 5 random numbers is $sum "
echo "The average is $(( sum / 5 ))"

#!/bin/bash
dice1=$(( RANDOM%6+1 ))
dice2=$(( RANDOM%6+1 ))
sum=`expr $dice1 + $dice2 `
echo "The sum of two random dice number $dice1 and $dice2  is $sum "

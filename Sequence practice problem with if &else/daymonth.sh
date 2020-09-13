#!/bin/bash
read -p "Enter the day " d
read -p "Enter the month(in num e .g .Jan=01 , Feb=02) " m

d1=`date -d 2020-03-20 +"%s"`
d2=`date -d 2020-06-20 +"%s"`
input=`date -d 2020-$m-$d +"%s"`


if [[ $input -ge $d1 ]] && [[ $input -le $d2 ]]
then
	echo "True"
else
	echo "False"
fi




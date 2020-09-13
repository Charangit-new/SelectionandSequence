#!/bin/bash
read -p "Enter three numbers : " a b c

echo "Arth1= a + b * c"
echo "Arth2= a % b + c"
echo "Arth3= a * b + c"
echo "Arth4= c + a / b"


printf '\nArth1=%0.2f' "$(( $a + $b * $c ))"
echo $a $b $c | awk '{print "\nArth2=" $1 % $2 +$3}'
printf 'Arth3=%0.2f\n' "$(( $a * $b + $c ))"
echo $a $b $c | awk '{ print "Arth4=" $3 + $1 / $2}'



if [ $a -ge $b ]
	then
		if [ $a -ge $c ]
		then echo "Maximum = $a"
		else
		echo "Maximum = $c"
		fi
else
		if [ $b -ge $c ]
		then echo "Maximum = $b"
		else
		echo "Maximum = $c"
		fi
fi


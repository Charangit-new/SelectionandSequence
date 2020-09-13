#!/bin/bash
read -p "Enter the number which is to be converted : " a
read -p "Enter source unit (feet,inch,meter) : " src
read -p "Enter destination unit (feet,inch,meter) : " des

case "$src-$des" in
	feet-inch) 
		printf '\nin inch = %0.2f' "$(( $a * 12 ))" ;;
	feet-meter)
                printf '\nin meter = %0.4f' "$(( $a * 3048 ))e-4" ;;
	inch-feet)
                feet=`echo $a | awk '{print $1/12}'`
		printf '\nin feet=%0.4f' "$feet" ;;
	meter-feet)
		meter=`echo $a | awk '{print $1 / 0.3048 }'`
		printf '\nin meter=%0.2f' "$meter"
 		;;
		*) echo "No Conversion found"
		;;
esac

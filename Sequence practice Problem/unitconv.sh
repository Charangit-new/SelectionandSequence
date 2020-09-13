#!/bin/bash
read -p "Enter source unit(feet or inch) " unitsrc
read -p "Enter destination unit(feet or inch) " destsrc
case "$unitsrc-$destsrc" in
	inch-feet)
		read -p "Enter inch value to convert to feet " i
		printf 'feet = %0.4f' "$(( 10**4 * $i / 12 ))e-4"
	;;
	feet-inch)
		read -p "Enter feet value to convert to inch " f
		printf 'inch = %0.2f' "$((  $f * 12 ))"
	;;
*)
	echo "No other options available "
	;;
esac


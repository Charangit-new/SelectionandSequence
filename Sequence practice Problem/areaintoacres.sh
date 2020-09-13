#!/bin/bash
read -p "Enter lenght and breadth(in feet) " l b
printf 'Area in square feet = %0.2f' "$(( l * b ))"
printf '\nArea in acre = %0.3f' "$(( l * b * 22957))e-9"
printf '\nArea of 25 such plots  = %0.3f' "$(( 25 * l * b * 22957))e-9"




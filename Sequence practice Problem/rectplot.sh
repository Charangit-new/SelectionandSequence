#!/bin/bash
read -p "Enter the length of rectangle(in feet) " l
read -p "Enter the breadth of rectangle(in feet) " b

printf 'Area of Rectangle in feet^2 = %0.2f ' "$(( l * b ))" 
printf '\nArea of Rectangle in meter^2 = %0.2f' "$(( l * b * 3048 * 3048 ))e-8" 


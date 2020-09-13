#!/bin/bash

read -p "Enter number {1,10,100,1000} " num
case $num in
	1) echo "One" ;;
	10) echo "Ten" ;;
	100) echo "Hundred" ;;
	1000) echo "Thousand" ;;
	*) echo "No word found" ;;
	esac


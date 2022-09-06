#!/bin/bash

# Script: Ops 301 Class 03 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 9/5/2022
# Purpose: This script launches a menu system and allows the
# user to choose an option 

# Main
INPUT = 'Please enter your choice: '
echo $INPUT

options=("Print Hello World" "Ping self" "IP info" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Print Hello World")
            echo "Hello World"
            ;;
        "Ping self")
            ping 127.0.0.1 -c 5
            ;;
        "IP info")
            sudo lshw -class network -short
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

# End 
#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: July 28, 2022
# Purpose: Use a loop in the script 

# Main

# Display running processes 
ps a

# Prompt the user for a PID 
#echo What is your PID?
#read process_id   

# Kill process using PID 
# do not kill essential processes required for OS
# to work, such as kernel drivers 
#kill -15 "$process_id"

# Use loop to faciliate the menu system of script, 
# so that it can prompt the user to choose an 
# option
echo Enter procces ids to be terminated, separated by space: 
read -a PID

for i in ${PID[@]}
do
    kill -15 $i
done

# Test and validate: Display running processes to show PID was killed 
# ps a 

# End




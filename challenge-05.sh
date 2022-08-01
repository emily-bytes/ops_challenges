#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: July 28, 2022
# Purpose: Use a loop in the script 

# Main

# Welcome message
echo This script kills a process and allows user to repeat

# Display running processes 
ps a

# Prompt the user for a PID and kill the process 
# and use a loop to repeat this process if needed

menu=y
until [ $menu = "n" ]; do 
   echo Enter a PID to be terminated: 
   read PID
   kill -15 "$PID"

   echo Would you like to kill another process? yes = y/no = n
   read menu 
done 

echo "End of script"

# Test and validate: Display running processes to show PID was killed 
# ps a 
ps a 

# End

# echo Enter procces ids to be terminated, separated by space: 
# read -a PID
# for i in ${PID[@]}
# do
#    kill -15 $i
# done
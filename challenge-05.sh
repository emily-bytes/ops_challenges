#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: July 28, 2022
# Purpose: Use a loop in the script 

# Main

# Displays running processes 
ps a

# Declare variable, PID
#var=$process_id

# Prompt the user for a PID 
echo What is your PID?
read -a process_id

# Kill process using PID 
# do not kill essential processes required for OS
# to work, such as kernel drivers 
kill -15 "$process_id"

# Use loop to faciliate the menu system of script, 
# so that it can prompt the user to choose an 
# option



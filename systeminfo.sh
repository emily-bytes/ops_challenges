#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 2, 2022
# Purpose: This script uses grep to remove irrelevant 
# information from the lshw output 

# This script outputs a report about current system CPU 
# and RAM performance of a Ubuntu computer. 
# Main

# Initialize variables 

# Initialize separate arrays to hold hardware, number of lines, and 
# commands
hardware=(CPU RAM DisplayAdapter NetworkAdapter)
num=(6 3 12 15) 
commands=('*-cpu' '*-memory' '*-display' '*-network')

# Computer Name 
echo 'Computer Name' && sudo lshw | grep -E '' | head -n1

# Use lshw to display system information to include: CPU, RAM
# Display adapter, and Network Adapter via "grep command"
for ((i=0;i<${#hardware[@]};i++))
do 
    echo ${hardware[$i]} && sudo lshw | grep -A ${num[$i]} ${commands[$i]};
done

# End 
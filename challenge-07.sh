#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 2, 2022
<<<<<<< HEAD
# Purpose: This script uses grep to remove irrelevant 
# information from the lshw output 
=======
# Purpose: Use grep to remove irrelevant information from the
# lshw output 
>>>>>>> 23b86fb0b602db1c3e4de7ba094b4017450f3be2

# This script outputs a report about current system CPU 
# and RAM performance of a Ubuntu computer. 
# Main

# Initialize variables 

<<<<<<< HEAD
# Initialize separate arrays to hold hardware, number of lines, and 
# commands
hardware=(CPU RAM DisplayAdapter NetworkAdapter)
num=(6 3 12 15) 
commands=('*-cpu' '*-memory' '*-display' '*-network')

# Use lshw to display system information to include: CPU, RAM
# Display adapter, and Network Adapter via "grep command"
for ((i=0;i<${#hardware[@]};i++))
do 
    echo ${hardware[$i]} && sudo lshw | grep -A ${num[$i]} ${commands[$i]};
done

# End 


#echo "CPU: "
#sudo lshw | grep -A 7 '*-cpu' 
#echo "RAM: "
#sudo lshw | grep -A 3 '*-memory' 
#echo "Display Adapter: "
#sudo lshw | grep -A 13 '*-display'
#echo "Network Adapter "
#sudo lshw | grep -A 17 '*-network'
=======
# End 
>>>>>>> 23b86fb0b602db1c3e4de7ba094b4017450f3be2

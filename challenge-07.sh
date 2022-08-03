#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 1, 2022
# Purpose: Use grep to remove irrelevant information from the
# lshw output 

# This script outputs a report about current system CPU 
# and RAM performance of a Ubuntu computer. 
# Main

# Uses lshw to display system information to include: CPU, RAM
# Display adapter, and Network Adapter via "grep command"
echo "CPU: "
sudo lshw | grep -A 7 '*-cpu' 
echo "RAM: "
sudo lshw | grep -A 3 '*-memory' 
echo "Display Adapter: "
sudo lshw | grep -A 13 '*-display'
echo "Network Adapter "
sudo lshw | grep -A 17 '*-network'

# End 
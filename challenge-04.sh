#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: July 28, 2022
# Purpose: This script creates directories through the use of an array

# Main
filename="test.txt"

# Create four directories 
# mkdir {"dir1", "dir2", "dir3", "dir4"}
mkdir {dir1,dir2,dir3,dir4}

# Declare array to hold four directories 
DIRECTORY_ARRAY=(dir1 dir2 dir3 dir4) 

# Create a new .txt file within each directory by 
# referencing the directory with array indices, 
# not the literal directory path

for i in ${DIRECTORY_ARRAY[@]}
do 
    /home/emilit/ops_challenges/$i; 
    touch $filename    
done

# Test and validate 
 

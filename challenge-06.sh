#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 1, 2022
# Purpose: Use at least one array, one loop, and one 
# conditional 

# This script detects if a file or directory exists,
# then creates it if it does not exist 

# Main

# Declare filename 
# FILE=/home/emilit/ops_challenges/challenge-06.sh

# Declare array to contain filenames 
DIRECTORIES=()
FILENAMES=(challenge-05.sh challenge-07.sh challenge-08.sh challenge-09.sh challenge-10.sh) 

for i in ${FILENAMES[@]}
do 
    # Conditional statment; if the file in array exists
    if [[ -f /home/emilit/ops_challenges/$i ]]; then 
        echo "$i exists." 
    else 
        # else state file does not exist and create it 
        echo "$i does not exist" && touch /home/emilit/ops_challenges/$i
    fi 
done 

# End

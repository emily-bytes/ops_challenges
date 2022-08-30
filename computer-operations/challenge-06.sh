#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 1, 2022
# Purpose: Use at least one array, one loop, and one 
# conditional 

# Main
# This script detects if a file or directory exists,
# then creates it if it does not exist 

# Welcome message
echo "This script detects if a file exists and then creates it if it does not exist"

menu=y
until [ $menu = "n" ]; do 
    # Prompt user for filename(s)
    echo "Enter filename(s), separated by space: " 
    read -a filename     # read user input into array called "filename"

    echo $'\nYou have entered '${#filename[@]}' file(s).' 

    # For loop 
    for i in ${filename[@]}
    do 
        # Conditional statment; if the file in the array exists
        # print "it exists"
        if [[ -f /home/emilit/ops_challenges/$i ]]; then 
            echo "$i exists." 
        else 
            # else,  state file does not exist and create it 
            echo "$i does not exist" && touch /home/emilit/ops_challenges/$i
            echo "$i has been created"
        fi 
    done 

    echo "Would you like to run this script again? (yes = y/no = n)"
    read menu 
done 

# Goodbye message
echo $'\nThank you for using the file creator script'

# End 

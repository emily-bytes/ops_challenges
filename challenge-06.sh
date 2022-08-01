#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 1, 2022
# Purpose: Use a loop in the script 

# This script detects if a file or directory exists,
# then creates it if it does not exist 

# must use at least one array, one loop, and one
# conditional 
# Main

# Declare filename 
# FILE=/home/emilit/ops_challenges/challenge-06.sh

# Declare array 
FILE_ARRAY=(challenge-06.sh challenge-07.sh challenge-08.sh challenge-09.sh challenge-10.sh) 

for i in ${FILE_ARRAY[@]}
do 
    if [ test -f "$i"] ; then   
        echo "$i exists." 
    else 
        echo "$i does not exist" && touch touch $i
    fi 
done 

# End

#menu=y
#until [ $menu = "n" ]; do 
#   echo Enter a PID to be terminated: 
#   read PID
#   kill -15 "$PID"

#   echo Would you like to kill another process? yes = y/no = n
#   read menu 
#done 

#for i in ${DIRECTORY_ARRAY[@]}
#do 
#    touch ./$i/$filename    # relative path 
# done
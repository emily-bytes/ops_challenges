#!/bin/bash

# Script: Ops 301 Class 03 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 9/5/2022
# Purpose: This script alters file permissions of everything in a directory 

# Main

# Prompts user for input directory path.
read -e -p "Enter the path to the file: " FILEPATH
echo $FILEPATH

# Prompts user for input permissions number (e.g. 777 to perform a chmod 777)
read -e -p "Enter permissions number: " PERMISSION
echo $PERMISSION

# Navigates to the directory input by the user and change all files inside it to the input setting.
find $FILEPATH -type f -exec chmod $PERMISSION {} \;

# Prints to the screen the directory contents and the new permissions settings of everything in the directory.
ls -l $FILEPATH

# End 
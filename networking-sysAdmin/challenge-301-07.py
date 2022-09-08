#!usr/bin/env python 3

# import libraries 
import os

# Script: Ops 301 Class 03 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 9/7/2022
# Purpose: This Python script generates directories,
# subdirectories, and files for user-provided directory
# path

# Read user input and assign to a variable
file = input("Enter the filename: ")

# Declare function
def generate_directory(file):
    for root, dirs, files in os.walk(file):
        print(root)
        print(dirs)
        print(files)

# Main
# Pass variable into function 
generate_directory(file) # /var/log

# End 




#!usr/bin/env python 3

# import libraries 
import os

# Script: Ops 301 Class 03 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 9/7/2022
# Purpose: This Python script generates directories,
# subdirectories, and files for user-provided directory
# path

# Define function: this function takes in user 
# input and prints directories, subdirectories, 
# and files for user-provided directory paths
def generate_directory(file):
    for root, dirs, files in os.walk(file):
        print(root)
        print(dirs)
        print(files)

# Main
# Read user input and assign to a variable
file = input("Enter the filename: ")

# Pass variable into function 
generate_directory(file)    # for example: /var/log

# End 




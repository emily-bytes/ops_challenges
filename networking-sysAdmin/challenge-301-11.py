#!/usr/bin/python3

import os 

# Script: Ops 301 Class 11 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: September 13, 2022
# Purpose: This Python script creates a new .txt file,
# appends three lines, prints to the screen the first
# line, then deletes the .txt file

# create a new .txt file and append three lines 
file = open("testfile.txt", "w")
line = ["I love Code Fellows!\n", "I love coding\n", "Only one week left of 301\n"]
file.writelines(line)
file.close()

# print the first line to screen 
file = open("testfile.txt", "r")
print(file.read(21))

# delete the .txt file 
if os.path.exists("testfile.txt"):
  os.remove("testfile.txt")
else:
  print("The file does not exist.")
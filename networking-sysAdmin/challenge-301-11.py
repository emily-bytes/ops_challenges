#!/usr/bin/python3

import os 

# Script: Ops 301 Class 11 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: September 13, 2022
# Purpose: This Python script creates a new .txt file,
# appends three lines, prints to the screen the first
# line, then deletes the .txt file

# create a new text file 
filename = "testfile.txt"

# append three lines to the file 
line = ["I love Code Fellows!", "I love coding", "Only one week left of 301"]

with open(filename, "a") as file:
  for i in range(len(line)):
    file.write(line[i] + "\n")

# verify lines were appended to the text file 
# with open(filename, "r") as file:
#     lines = file.readlines()
#     for line in lines:
#         print(line.strip())

# print first line to screen 
with open(filename, "r") as file:
  first_line = file.readline()
  print(first_line)

# delete the .text  file 
if os.path.exists(filename):
  os.remove(filename)
  print("The file has successfully been deleted.")
else:
  print("The file does not exist.")
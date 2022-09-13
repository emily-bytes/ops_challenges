#!/usr/bin/python3

# Script: Ops 301 Class 11 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: September 13, 2022
# Purpose: This Python script creates a new .txt file,
# appends three lines, prints to the screen the first
# line, then deletes the .txt file

# create new .txt file
file = open("demofile.txt", "w")

# open a file that exists
file = open("demofile.txt")

# open a file and read from it 
file = open("testfile.txt", "r")
print(file.read())

# return the first five characters of a file
file = open("testfile.txt", "r")
print(file.read(5))

# closes a file
file.close()
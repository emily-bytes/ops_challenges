#!/usr/bin/python3

# Script: Ops 301 Class 10 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: September 12, 2022
# Purpose: This Python script creates if statements using
# logical conditionals of your choice 

# Create an if statement that includes both elif and else 
# to execute when both if and elif are not met 

# variables to hold grade thresholds 
A = 90
B = 80
C = 70
D = 60

# get test score
test_score_1 = int(input("Enter test score: "))

# determine the letter grade
if test_score >= A:
    print("Your grade is an A\n")
elif test_score >= B:
    print("Your grade is a B\n")
elif test_score >= C:
    print("Your grade is a C\n")
else:
    print("Your grade is a D\n")
#!/bin/bash

# Script: Ops 201 Class 08 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 3, 2022
# Purpose: This script automatically creates backup
# files for Jorge 
 
# Main

@echo off

ROBOCOPY "C:\Users\j.thompson\Desktop\My Project Files" "E:\Jorge'sBackups" /LOG:backup.txt

pause
# End
#!/bin/bash

# Script: Ops 301 Class 03 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 9/5/2022
# Purpose: This script clears the content of logs

# Main

# Initiate variables
var1="/var/log/syslog" 
var2="/var/log/wtmp-"

# This function clears the contents of these logs:
clearLogs() {
    cat $1 
    cat /dev/null > $1 
    cat $1 
}

# Pass parameters into clearLogs function
clearLogs $var1
clearLogs $var2

# End 
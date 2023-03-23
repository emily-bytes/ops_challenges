#!/bin/bash

# Script: Ops 301 Class 02 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 8/30/2022
# Purpose: This script copies /var/log/syslog to
# the current working directory and appends the 
# current date and time to the filename 

# Main
LOG_FILE="./syslog_$(date +%Y-%m-%d)"

function copySyslog
{   
    cp /var/log/syslog $LOG_FILE
}

# Function call 
copySyslog 

# End 

# notes: syslog collects messages of various programs 
# and services including the kernel and stores them 
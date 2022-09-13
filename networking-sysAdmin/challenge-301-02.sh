#!/bin/bash

# Script: Ops 301 Class 02 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: 8/30/2022
# Purpose: This script copies /var/log/syslog to
# the current working directory and appends the 
# current date and time to the filename 

# Main

# Initialize variable and assign path to network_report.txt
# $Path="/temp-syslog.txt"
today=$(date +%Y-%m-%d) 
echo $today 

function copySyslog
{
    cp /var/log/syslog /home/emilit/ops_challenges/networking-sysAdmin
    mv syslog syslog$today
}

# Call function
copySyslog 

# End 

# notes: syslog collects messages of various programs 
# and services including the kernel and stores them 
#!/bin/bash

# Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Emily Lee
# Date of latest revision: August 4, 2022
# Purpose: Windows Powershell script that fetches useful system
# event logs 
 
# Main

# Output all events from the System event log that occured 
# in the last 24 hours to a file on your desktop named last_24.txt
Get-EventLog -List

# Output all error type vents from the System event log to a
# file on your desktop named error.txt
Get-EventLog -LogName System -EntryType Error

# Print to the screen all events with ID of 16 from the System 
# event log
Get-EventLog -LogName System 

# Print to the screen the most recent 20 events from the System
# event log
Get-EventLog -LogName System -Newest 20

# Print to the screen all sources of the 500 most recent entries in 
# the system event log. Ensure that the full lines are displayed 
$EVENT = Get-EventLog -LogName System -Newest 500 
$EVENT | Group-Object -Property Source 

# End 
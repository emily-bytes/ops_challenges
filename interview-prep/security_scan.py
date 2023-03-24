#!/usr/bin/python3 

# This script automates a security scan on a host on a 
# regular basis 

import os
import time 

# set the target IP address or hostname
target = "127.0.0.1"

nmap_command = "nmap -sV " + target

#set the interval time between scans in seconds
interval = 86400 #24 hours

while True:
    # run nmap command and save the output to a file 
    filename = "scan_" + time.strftime("%Y%m$d-%H%M%S") + ".txt"
    os.system(nmap_command + " > " + filename)

    # wait for the interval time before running the scan again
    time.sleep(interval)
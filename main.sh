#!/bin/bash

{
    echo "################ Fetch Free Disk Space `date` ##################"
    # Collect mounted free disk space
    df -h

    echo ""
    echo "################ Running Processes ##################"
    # Collect running processes
    ps aux | grep fis001s

    echo ""
    echo "################ Current CPU Usage ##################"
    # Collect current CPU usage
    top -n 1 -b

    echo ""
    echo "################ Free and Used Memory ##################"
    # Collect free and used memory
    free -m

    echo ""
    echo "################ RPM Packages Installed ##################"
    # List RPM packages installed
    rpm -qa

    echo ""
    echo "################ System Information ##################"
    # Print system information
    uname -a
} > system_info.txt
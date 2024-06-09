#!/bin/bash

{
    echo "   ________  ________  ________      _______   ________  ________ 
  ╱        ╲╱    ╱   ╲╱        ╲    ╱       ╲╲╱        ╲╱    ╱   ╲
 ╱        _╱         ╱        _╱   ╱        ╱╱         ╱         ╱
╱-        ╱╲__      ╱-        ╱   ╱         ╱         ╱         ╱ 
╲_______╱╱   ╲_____╱╲________╱    ╲__╱__╱__╱╲________╱╲__╱_____╱  "
    echo "################ System Monitor v1.0 ### Date: `date` ##################"
    echo "================ Fetch Free Disk Space=================="
    # Collect mounted free disk space
    df -h

    echo ""
    echo "================ Running Processes ================"
    # Collect running processes
    ps aux | grep fis001s

    echo ""
    echo "================ Current CPU Usage ================"
    # Collect current CPU usage
    top -n 1 -b

    echo ""
    echo "================ Free and Used Memory ================"
    # Collect free and used memory
    free -m

    echo ""
    echo "================ Detailed Memory, CPU activity Information ================"
    vmstat -s

    echo ""
    echo "================ RPM Packages Installed ================"
    # List RPM packages installed
    rpm -qa

    echo ""
    echo "================ System Information ================"
    # Print system information
    uname -a

    echo "================ END OF REPORT ================="
} > system_info.txt
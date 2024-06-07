#!/bin/bash

echo "workin"
# Collect mounted free disk space
df -h >> system_info.txt

# Collect running processes
ps aux >> system_info.txt

# Collect current CPU usage
top -n 1 -b >> system_info.txt

# Collect free and used memory
free -m >> system_info.txt

# List RPM packages installed
rpm -qa >> system_info.txt

# Print system information
uname -a >> system_info.txt
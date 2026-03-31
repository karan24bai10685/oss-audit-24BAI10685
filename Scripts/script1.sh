#!/bin/bash
# Script 1: System Identity Report
# Author: Shreyas Mene 
# Course: Open Source Software

# Variables
STUDENT_NAME="Karan Singh"
SOFTWARE_CHOICE="VLC Media Player"

# System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_DATE=$(date +"%A, %B %d, %Y")

# Display
echo "=========================================="
echo " The Open Source Audit "
echo "=========================================="
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Date    : $CURRENT_DATE"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "------------------------------------------"
echo "Message : The core of this operating system is protected by the GNU GPL version 2, ensuring it remains free as in freedom."
echo "=========================================="

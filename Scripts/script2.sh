#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE=$1

if [ -z "$PACKAGE" ]; then
    echo "Please provide a package name. Example: ./script2.sh vlc"
    exit 1
fi

# Check if package is installed
if command -v pacman &> /dev/null; then
    if pacman -Qi "$PACKAGE" &> /dev/null; then
        echo "$PACKAGE is installed."
        # Extract version info for Arch
        pacman -Qi "$PACKAGE" | grep -E '^Version|^Packager|^Description'
    else
        echo "$PACKAGE is NOT installed."
    fi
elif command -v dpkg &> /dev/null; then
    if dpkg -l | grep -q "^ii  $PACKAGE "; then
        echo "$PACKAGE is installed."
        # Extract version info for Debian/Ubuntu
        dpkg -s "$PACKAGE" | grep -E '^Version|^Maintainer|^Description'
    else
        echo "$PACKAGE is NOT installed."
    fi
else
    echo "Error: Neither pacman nor dpkg found. Cannot check package status."
    exit 1
fi

echo "----------------------------------------"

# Case statement for philosophy notes
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql|mariadb-server) 
        echo "MySQL/MariaDB: Open source at the heart of millions of apps." 
        ;;
    vlc) 
        echo "VLC Media Player: The traffic cone that plays anything, built by students to ensure media freedom." 
        ;;
    firefox) 
        echo "Firefox: A nonprofit champion fighting for an open, unmonopolized web." 
        ;;
    *) 
        echo "FOSS is the foundation of modern computing." 
        ;;
esac
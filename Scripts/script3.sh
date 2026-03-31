#!/bin/bash
# Script 3: Disk and Permission Auditor (Arch Compatible)
# Audits permissions and sizes of key Arch Linux directories

# Standard Arch directories + pacman cache and boot partition
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/var/cache/pacman/pkg" "/boot")

echo "========================================"
echo " Arch Linux Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Use 'stat' for consistent parsing regardless of 'ls' format
        # Output: permissions (octal), user, group
        PERMS=$(stat -c "%A (%a) %U:%G" "$DIR")
        # Get human readable size, suppressing errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        echo "$DIR => Perms: $PERMS | Size: ${SIZE:-N/A}"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------------------------"
# Check for VLC config directory using XDG or standard home
VLC_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/vlc"
if [ -d "$VLC_DIR" ]; then
    VLC_PERMS=$(stat -c "%A (%a) %U:%G" "$VLC_DIR")
    echo "VLC Config ($VLC_DIR) => Perms: $VLC_PERMS"
else
    echo "VLC Config directory not found in $VLC_DIR"
fi
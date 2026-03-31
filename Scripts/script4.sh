#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Retry loop if file is missing or empty
while [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Error: File '$LOGFILE' not found or is empty."
    echo "Note: On Omarchy/Arch-based systems, '/var/log/syslog' typically does not exist."
    echo "Try using '/var/log/pacman.log' or a temporary file from 'journalctl'."
    read -p "Please enter a valid log file path (or type 'exit' to quit): " LOGFILE
    if [ "$LOGFILE" == "exit" ]; then
        exit 1
    fi
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Count occurrences using grep (faster than line-by-line while loop)
COUNT=$(grep -ic "$KEYWORD" "$LOGFILE")

echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "----------------------------------------"

if [ $COUNT -gt 0 ]; then
    echo "Here are the last 5 matching lines:"
    # This grep will now find the last 5 matches regardless of their position in the file
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
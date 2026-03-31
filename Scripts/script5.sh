#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Alias concept demo: alias manifest='./script5.sh'

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo "Answer three questions to generate your manifesto."
echo

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Clear file if it exists, or create new
> "$OUTPUT"

# Compose and write the paragraph using redirection
echo "My Open Source Manifesto" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "--------------------------" >> "$OUTPUT"
echo "As a modern software developer, I rely daily on tools built by the community, such as $TOOL. To me, the core of the open-source philosophy boils down to a single concept: $FREEDOM." >> "$OUTPUT"
echo "I believe that knowledge should not be locked behind proprietary walls. If I had the time and resources, I would build a $BUILD and release it under the GPL, ensuring that anyone in the world could use it, study it, and improve it." >> "$OUTPUT"
echo "Code is collaborative. We stand on the shoulders of giants." >> "$OUTPUT"

echo "========================================"
echo "Manifesto successfully saved to $OUTPUT"
echo "Here is your generated file:"
echo "----------------------------------------"
cat "$OUTPUT"
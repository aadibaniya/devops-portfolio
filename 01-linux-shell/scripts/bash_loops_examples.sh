#!/bin/bash

############################################################
# Bash Loops Examples - Beginner Friendly
# Author: [Your Name]
# Date: [Date]
#
# This script shows simple examples of:
# - for loop
# - while loop
# - until loop
# 
# Each section explains what’s happening.
#
# To run this script:
# chmod +x bash_loops_examples.sh
# ./bash_loops_examples.sh
############################################################

echo "==========================================="
echo "          BASH LOOP EXAMPLES               "
echo "==========================================="

############################################################
# 1️⃣ FOR LOOP - Iterate over a list or range
############################################################

echo ""
echo "----- 1️⃣ FOR LOOP -----"

# Example 1: Loop over a list
echo "Example 1: Loop over a list of fruits"
for fruit in apple banana orange; do
    echo "I like $fruit"
done

# Example 2: Loop over a range of numbers
echo "Example 2: Loop over numbers 1 to 3"
for number in {1..3}; do
    echo "Number is $number"
done

############################################################
# 2️⃣ WHILE LOOP - Run while a condition is true
############################################################

echo ""
echo "----- 2️⃣ WHILE LOOP -----"

# Example: Count from 1 to 3
echo "Counting from 1 to 3"
count=1
while [ $count -le 3 ]; do
    echo "Count is $count"
    count=$((count + 1))
done

############################################################
# 3️⃣ UNTIL LOOP - Run until a condition becomes true
############################################################

echo ""
echo "----- 3️⃣ UNTIL LOOP -----"

# Example: Count from 1 until greater than 3
echo "Counting until number > 3"
count=1
until [ $count -gt 3 ]; do
    echo "Count is $count"
    count=$((count + 1))
done

############################################################
# 4️⃣ BONUS: BREAK and CONTINUE inside loops
############################################################

echo ""
echo "----- 4️⃣ BONUS: BREAK AND CONTINUE -----"

# Example: Skip number 2, stop at number 4
for i in {1..5}; do
    if [ $i -eq 2 ]; then
        echo "Skipping $i (using continue)"
        continue
    fi
    if [ $i -eq 4 ]; then
        echo "Breaking at $i (using break)"
        break
    fi
    echo "Number: $i"
done

############################################################
# End of Script
############################################################

echo ""
echo "✅ All loop examples completed!"

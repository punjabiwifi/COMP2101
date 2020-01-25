#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Please enter the first number - " myvar1
read -p "Please enter the second number - " myvar2
read -p "Please enter the third number - " myvar3

sum=$((myvar1 + myvar2 + myvar3 ))
product=$((myvar1*myvar2*myvar3))

cat <<EOF
################
#Addition
$myvar1 plus $myvar2 plus $myvar3 is $sum
################
#Multiplication
$myvar1 multiplied by $myvar2 multiplied by $myvar3 is $product
EOF

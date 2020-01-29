#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
# display the results
echo "Rolled $die1, $die2"

##################################
#Task1
##################################
#Putting the number of sides and the bias in variables
range=6
bias=1
die1=$((RANDOM % range + bias))
die2=$((RANDOM % range +bias))



##################################
#Task2
##################################
#sum generation
sum=$((die1+die2))

#average generation
average=$((sum/2))

##################################
#summary generation
##################################
echo "Rolling pair of dice with 9 faces i.e. same as the number of letters in my name,
die1 = $die1,
die2 = $die2,
sum of dice = $sum,
average of dice (approximated by defect)= $average"

#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the six faced dice and display the result
echo "
Rolling dice with six faces...
$(( RANDOM % 6 + 1)) rolled
"

#roll the five faced dice and display the result
echo "
Rolling dice with 5 faces...
$(( RANDOM % 5 +1)) rolled
"
#roll the 20 faced dice and display the result
echo "
Rolling dice with 20 faces...
$(( RANDOM % 20 +1)) rolled
"


#Dice that rolls as many letters in my first name, my name is Lovepreet
echo "
Rolling dice with 9 faces...
$(( RANDOM % 9 +1)) rolled
"

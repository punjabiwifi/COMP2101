#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
user="Lovepreet"
hostname=(hostname)
now=$(date +"%A at %H:%M %p")
cday=$(date +"%A")
if [[ $cday=="Monday" ]]; then
  #statements
  title="Positive"
elif [[ $cday=="Tuesday" ]]; then
  #statements
  title="Negative"
elif [[ $cday=="Wednesday" ]]; then
  #statements
  title="Colorful"
elif [[ $cday=="Thursday" ]]; then
  #statements
  title="Stranger"
elif [[ $cday=="Friday" ]]; then
  #statements
  title="Optimum"
elif [[ $cday=="Saturday" ]]; then
  #statements
  title="Black and White"
elif [[ $cday=="Sunday" ]]; then
  #statements
  title="Sunnyful"
fi




cat <<EOF

Welcome to planet "$(hostname)" "$title $user!"
It is $now

EOF

#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

#Task1
echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""

#Task2
echo "Setgid files:"
echo "============="
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 4
#Only change required is to change the permissions to 2000 in order to identify the the setgid files and to chanage the column from 3
# to 4 in order to sort it correctly
echo ""

#Task3
echo "10 Largest Files in the System:"
echo "============="
find / -type f -exec /bin/ls --block-size=M -l 2>/dev/null {} \; | sort -k 4 | head -n 10 | awk '{print $3,$5,$9}'
# / refers to the path from where the find command starts
#type f refers to a regular files
#-exec stands for the execute command and it will execute the ls command and append all the files found in the {}
#sort uses the 4th line to sort the found Files
#awk command helps showing the 3rd, 5th and the 9th line which corresponds to the owner, size and filename respectively.
#awk working with the print command added, otherwise shows error.

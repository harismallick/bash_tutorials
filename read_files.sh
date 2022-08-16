#!/bin/bash

#FILES="./*.txt"

#Based on us defining the path for the text files this way, it is relative to the location of the shell script.
#These can be rewritten to the absolute path so you don't have to constantly copy and paste your script to different location based on the file you need to process.
#The script can always be accessed from the same location and give the location of the file to be processed as an argument.
#The absolute path for this directory is: "/home/harismallick/Documents/bash_tutorials"
#If you're reading from a network drive (when on a linux machine) you need to add "/mnt to the front of your directory"

FILES="${1}/*.txt"
echo $FILES

for file in $FILES
do
    echo
    echo "Reading from file called: ${file}"
    cat ${file}
    python3 date_appender.py -p ${file}
    #mkdir -p completed
    cp ${file} completed/"$(basename -- $file)" # This line transfers the processed files into a new directory
    #rm ${file} # This line would remove the processed file from the original directory
done

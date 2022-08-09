#!/bin/bash

FILES="./*.txt"
echo $FILES

for file in $FILES
do
    echo
    echo "Reading from file called: ${file}"
    cat ${file}
    mkdir -p completed
    cp ${file} completed/"$(basename -- $file)" # This line transfers the processed files into a new directory
    #rm ${file} # This line would remove the processed file from the original directory
done

#! /bin/bash

# Will be covering conditional loops in this shell script.

# Starting with while loops

number=0

while (( $number < 6 ))
do
    echo "$number"
    number=$(( number+1 ))
done

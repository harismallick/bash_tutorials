#! /bin/bash

# Look at some examples on how to apply conditional statements in shell scripts.

count=10
# The if condition is always placed within square brackets.
# Make sure to always add white space between the brackets and the condition, otherwise bash might not interpret it correctly.
# if conditional syntax: '-eq', '-ne', '-gt', '-lt'
# These conditional syntax only to be used if the condition is being placed within [] brackets.
# You can also just use '>', '<', '==', etc, if the condition is placed within (()) brackets.

# if [ $count -eq 9 ]
if (( $count > 9 ))
then
    echo "The condition is true."
else
    echo "This condition is false."

fi

#! /bin/bash

# Look at some examples on how to apply conditional statements in shell scripts.

count=10
# The if condition is always placed within square brackets.
# Make sure to always add white space between the brackets and the condition, otherwise bash might not interpret it correctly.
# if conditional syntax: '-eq', '-ne', '-gt', '-lt'
# These conditional syntax only to be used if the condition is being placed within [] brackets.
# You can also just use '>', '<', '==', etc, if the condition is placed within (()) brackets.

# if [ $count -eq 9 ]
if (( $count < 9 ))
then
    echo "The number is less than 9."
elif (( $count == 10 ))
then
    echo "The number is 10."
else
    echo "This condition is false."

fi

age=30

if (( $age >= 18 )) && (( $age <=65 ))
then
    echo "Person is eligible for work"
elif [ "$age" -gt 65 ]
then
    echo "Person is too old."
else
    echo "Person is too young."
fi

# Now lets look at how to implement case statements in Bash

echo -n "Enter the name of a country: "
read country

echo -n "The official language of $country is "

case $country in

    Lithuania)
        echo -n "Lithuanian" ;;
    Romania | Moldova)
        echo -n "Romanian" ;;
    Italy | "San Marino" | Switzerland | "Vatican City")
        echo -n "Italian" ;;
    *)
        echo -n "unknown" ;;
esac
echo

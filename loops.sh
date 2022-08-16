#!/bin/bash

for for_i in {1..10}
do
    echo "Welcome to this bash script ${for_i}"
done

while_i=1

while [ $while_i -le 10 ]
do
    echo "Welcome to this bash script ${while_i}"
    while_i=$(($while_i + 1))
done
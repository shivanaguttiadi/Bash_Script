#!/bin/bash

read -p "Enter a number: " num
for (( i=1; i<11; i++ ))
do
echo "$num x $i = $((num*i))"
done

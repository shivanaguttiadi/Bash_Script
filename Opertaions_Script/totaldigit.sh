#!/bin/bash


read -p "Enter a Number: " num
sum=0
while [ $num -gt 0 ]
do
dig=$((num%10))
sum=$((sum+dig))
num=$((num/10))
done
echo "The Sum of the digits of the given number: $sum"



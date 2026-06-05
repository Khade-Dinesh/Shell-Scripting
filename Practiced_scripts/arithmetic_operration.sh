#!/bin/bash 

# simple arithmetic operations

read -p "enter no for a= " a 
read -p "enter no for b= " b

let sum=$a+$b

echo "sum of $a and $b: $sum"

echo "substraction of $a and $b: $(($a-$b))"

echo "multiplication of $a and $b: $(($a*$b))"

echo "division of $a and $b: $(($a/$b))"

echo "remainder $a and $b $(($a%$b))"


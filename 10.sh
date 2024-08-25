#!/bin/bash

# Input details
echo "Enter two numbers and an operator (+, -, *, /):"
read num1 num2 operator

# calculation
case "$operator" in
    +) result=$(($num1 + $num2)) ;;
    -) result=$(($num1 - $num2)) ;;
    *) result=$(($num1 * $num2)) ;;
    /) result=$(($num1 / $num2)) ;;
    *) echo "Invalid operator." ;;
esac

# print
echo "Result: $result"

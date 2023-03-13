#/bin/bash
#This script is a simple adder calculator
echo -n "Please enter the firstnumber:"
read num1
echo -n "Please enter the second number: "
read num2
sum=$[ $num1 +$num2 ]
echo "The sum of $num1 and $num2 is : $sum"

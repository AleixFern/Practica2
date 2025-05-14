#!/bin/bash

echo "Enter operation (add, subtract, multiply, divide):"
read operation

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

# Check if num1 is a number
if ! [ "$num1" -eq "$num1" ] 2>/dev/null; then
  echo "First value is not a number."
  exit 1
fi

# Check if num2 is a number
if ! [ "$num2" -eq "$num2" ] 2>/dev/null; then
  echo "Second value is not a number."
  exit 1
fi

# Do the operation
if [ "$operation" = "add" ]; then
  echo "Result: $(($num1 + $num2))"

elif [ "$operation" = "subtract" ]; then
  echo "Result: $(($num1 - $num2))"

elif [ "$operation" = "multiply" ]; then
  echo "Result: $(($num1 * $num2))"

elif [ "$operation" = "divide" ]; then
  if [ "$num2" -eq 0 ]; then
    echo "Error: Cannot divide by zero."
    exit 1
  fi
  echo "Result: $(($num1 / $num2))"

else
  echo "Unknown operation. Use: add, subtract, multiply, or divide."
fi

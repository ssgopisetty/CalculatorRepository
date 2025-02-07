#!/bin/bash

# Simple Interest Calculator

# Get principal amount
read -p "Enter principal amount: " principal

# Get rate of interest
read -p "Enter rate of interest (percentage): " rate

# Get time in years
read -p "Enter time (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display the results
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time (Years): $time"
echo "Simple Interest: $interest"
echo "Total Amount: $total"

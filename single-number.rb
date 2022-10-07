# https://leetcode.com/problems/single-number/

# INSTRUCTIONS
# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
# You must implement a solution with a linear runtime complexity and use only constant extra space.

# STEPS
# Define a method that accepts an array
# Create an empty hash
# Using a while loop, iterate through the array and create a hash value for each new element, and increase the value of any given key if it is already stored in the hash
# Return the hash value that only has one instance

# https://trello.com/c/IjfPcKsG/78-count-votes

# INSTRUCTIONS
# Given an array of strings, return a hash that provides of a count of how many times each string occurs.

# Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

# STEPS
# Define a method that accepts an array
# Create an empty hash
# Loop through the array
  # For every instance of a new array value, create that value as a key in the hash, and set the key's value equal to one
  # If an array value has already been created in the hash, increase the key's value by one
  # THOUGH NOT SPECIFIED IN INSTRUCTIONS: If i want to add another layer, I can also order the hash to return the key-value pairings with ordered by the highest values
# Return hash


def count_votes(strings_array)
    count = {}
    i = 0
    while i < strings_array.length
      
    end
end
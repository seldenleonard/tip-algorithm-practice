# https://trello.com/c/RrVM3Fpr/116-array-max

# INSTRUCTIONS
# Write a function that returns the greatest value from an array of numbers.
  # Input: [5, 17, -4, 20, 12]
  # Output: 20

# STEPS
# Define a method that accepts an array
# Set a variable called "greatest_value" equal to the first value in the array
# Define an index variable equal to 1
# Loop through the array
  # Compare the array[index] with greatest_value variable and if array[index] is greater than greatest_value variable, set greatest_value = array[index]
  # Increase index by 1
# Return greatest_value

def array_max(nums)
  greatest_value = nums[0]
  i = 1
  while nums.length < i
    if nums[i] > greatest_value
      greatest_value = nums[i]
    end
    i += 1
  end
  greatest_value
end
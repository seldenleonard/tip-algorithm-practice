# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# STEPS
# Write a method that accepts a string
# Create a new variable that is the same as the input string
# Set an index = 0
# Using a while loop
  # iterate the index by values of 2 until it is either equal to or greater than the length of the input string
  # using .upcase! capitlize letters at each index in the string
# Return new string

def alternate_capitals(str)
  caps_str = str
  index = 1
  while index < caps_str.length
    caps_str[index] = caps_str[index].upcase
    index += 2
  end
  caps_str
end

p alternate_capitals("hello, how are your porcupines today?")
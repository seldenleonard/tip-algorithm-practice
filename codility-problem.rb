# INSTRUCTIONS

# Write a function:

  # def solution(a)

# that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
  # Given A = [1, 2, 3], the function should return 4.
  # Given A = [−1, −3], the function should return 1.

# Write an efficient algorithm for the following assumptions:
  # N is an integer within the range [1..100,000];
  # each element of array A is an integer within the range [−1,000,000..1,000,000].

# STEPS
# Define a method that accepts an array
# Define a variable called 'counter' and set it equal to 1
# Loop until 'counter' is not equitable to a value in the array
  # Increase counter by 1
# Return counter

def solution(a)
  counter = 1
  while a.include? counter
    counter += 1
  end
  counter
end

p solution([1, 3, 6, 4, 1, 2])
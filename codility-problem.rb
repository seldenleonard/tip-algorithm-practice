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

# SOLUTION 1 - Passed all Example Test Cases and Correctness Test Cases, but passed only 1/4 Performance Test Cases
# def solution(a)
#   counter = 1
#   while a.include? counter
#     counter += 1
#   end
#   counter
# end

# STEPS TO MAKE ALGORITHM MORE EFFICIENT
# Replace 'counter' variable with and index variable, and set it equal to 0
# Sort array from smallest to largest
# Remove all values less than 1 from the array
# Until a[i] != i + 1
  # i += 1
# Return i

# SOLUTION 2 - Need to make the algorithm faster
def solution(a)
  i = 0
  a.sort
  until a[i] != i + 1
    i += 1
  end
  i
end

# Edgecase: THIS actually doesnt work when an integer repeats in the array. For example, in the array below, 1 occurs twice, thus causing the "a[i] != i + 1" to give me an incorrect answer

p solution([1, 3, 6, 4, 1, 2])
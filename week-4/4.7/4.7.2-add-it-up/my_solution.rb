# Add it up!

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented in the file.

# I worked on this challenge [with Alex Wen].

# 0. total Pseudocode
# Input: numbers in array
# Output: summation of numbers in array
# Steps to solve the problem.

# Determine array length
# Determine last index number
# Run factorial method on array

# 1. total initial solution
# [2, 4, 6] = 48, length = 3

=begin
def total(array)
  length = array.length
  index = length - 1
  result = 0

  while length >= 1
    result = result + array[index]
    length -= 1
    index -= 1
  end

  return result
end
=end

=begin
def total(array)
  sum = 0
  array.each { |a| sum+=a }
  return sum
end
=end


# 3. total refactored solution
def total(array)
  return array.reduce(:+)
end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a sentence
# Steps to solve the problem.

# capitalize first letter of first string
# combined strings with space in between and period on end



# 5. sentence_maker initial solution
def sentence_maker(array)
  array[0] = array[0].capitalize
  sentence = array.join(" ") + "."
  return sentence
end


# 6. sentence_maker refactored solution


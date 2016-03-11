# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Frank Lam]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented.

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) Return single-element array
# What are the steps needed to solve the problem?

# 1. Use hash with array elements as keys and frequency count as values
# 2. Analyze hash for largest value
# 3. Return key associated with largest value

# 1. Initial Solution
# mode[1,2,3,4,4]
# dog-1, cat-1, lion-2, fish-1, ant-1, tiger-1

def mode (arr)
  hash = Hash.new
  arr.each do |element|
    if hash.has_key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  new_array = []
  comparison = 1

  hash.each do |key, value|
    if value == comparison
      new_array << key
    elsif value > comparison
      new_array = [key]
      comparison = value
    end
  end

  return new_array
end

# 3. Refactored Solution

# def mode(mode)
#   mode_return = mode.inject({}) do |accumulator, v|
#     accumulator[v] = mode.count(v)
#    p accumulator
#   end

#   mode_return.select { |k,v| v == mode_return.values.max }.keys
# end

=begin
# 4. Reflection
1. Which data structure did you and your pair decide to implement and why?
-We decided to use a hash because we wanted to store 2 values, the number/string and its frequency, and we didn't care about the order.

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
-I think this problem was logically more difficult than the last so the pseudocode was harder.

3. What issues/successes did you run into when translating your pseudocode to code?
-We got hung up with the comparison variable for a minute because I was overcomplicating it. We had a smooth workflow though; we were always making progress and didn't get too stuck on any one part for too long.

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
-We weren't that successful in using new methods in our refactoring, but through office hours and discussing with others I found a refactored solution. I still don't think I'm familiar enough with some of the methods to have come up with something like that as an initial solution, but I find it helpful to at least dissect them after the fact.
=end
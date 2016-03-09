# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Frank Lam]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) Return single-element array
# What are the steps needed to solve the problem?

# 1. Convert any integer inputs to strings
# 2. Use hash with array elements as keys and frequency count as values
# 3. Analyze hash for largest value
# 4. Return key associated with largest value
# 5. Return inputs as original object types


# 1. Initial Solution
# mode[1,2,3,4,4]
# dog-1, cat-1, lion-2, fish-1, ant-1, tiger-1

require 'benchmark'
require 'bigdecimal/math'

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

puts Benchmark.measure { BigMath.PI(10_000) }
# calculate pi to 10k digits
# 0.310000   0.030000   0.340000 (  0.340075)

# 3. Refactored Solution

# def mode(mode)
#   mode_return = mode.inject({}) do |accumulator, v|
#     accumulator[v] = mode.count(v)
#    p accumulator
#   end

#   mode_return.select { |k,v| v == mode_return.values.max }.keys
# end
# puts Benchmark.measure { BigMath.PI(10_000) }
# 0.350000   0.030000   0.380000 (  0.392508)

# 4. Reflection
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




# 4. Reflection
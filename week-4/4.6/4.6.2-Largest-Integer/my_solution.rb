# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  return list_of_nums[0] if list_of_nums.length <= 1

  largest = list_of_nums.pop
  trash = []

  list_of_nums.each do |test_item|
    if test_item < largest
      trash.push test_item
    else
      trash.push largest
      largest = test_item
    end
  end
  return largest
end
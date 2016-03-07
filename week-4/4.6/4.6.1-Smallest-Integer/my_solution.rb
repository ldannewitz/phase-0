# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input and returns the smallest integer in the array

# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+

# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin
# I think this is the technical "by the books" answer they were looking for
def smallest_integer(list_of_nums)
  return list_of_nums[0] if list_of_nums.length <= 1

  smallest = list_of_nums.pop
  dup = []

  list_of_nums.each do |test_item|
    if test_item < smallest
      dup.push smallest
      smallest = test_item
    else
      dup.push test_item
    end
  end
  return smallest
end
=end

# This is how I originally solved it
def smallest_integer(list_of_nums)
  while list_of_nums.length > 1
    list_of_nums[0] > list_of_nums[1] ? list_of_nums.delete_at(0) : list_of_nums.delete_at(1)
  end
  smallest_num = list_of_nums[0]
end
# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# 1-10
# lower = 2
# upper = 8

def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers.length == 0 || upper_bound < lower_bound
  counter = 0
  list_of_integers.each do |test_item|
    counter += 1 if test_item >= lower_bound && test_item <= upper_bound
  end
  return counter
end
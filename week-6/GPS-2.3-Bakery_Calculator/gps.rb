# Your Names
# 1) Lisa Dannewitz
# 2) Elizabeth Brown

# We spent [1] hours on this challenge.

#Input: string, integer
#Output: string
#Steps to Complete:
# Create a hash with possible baked goods and the humber of possible ingredients
# Simplify error throwing process
## Check if the input baked good exists in the library of items -- use has_key?
## Call an error if the input
# Change method used in serving size calculation
# Add something to do with remaining ingredients --- "ADD this feature"

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  cake = 0
  cookie = 0
  if remaining_ingredients > 4
    cake = 1
    remaining_ingredients -= 5
  end
  cookie = remaining_ingredients

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{cookie} cookies and #{cake} cakes"
  end
end

# p serving_size_calc("pie", 15)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
p serving_size_calc("cake", 12)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

=begin
#  Reflection
1. What did you learn about making code readable by working on this challenge?
--Just because a piece of code "works" doesn't mean it's the best or most readable way to do something. The original code used a lot of round-about ways of doing things that were hard to follow. We focused on simplifying the logic.

2. Did you learn any new methods? What did you learn about them?
--No, but it was good to practice raising arguments again. I had also never divided variables inside of a "puts" before so that was an interesting technique to see.

3. What did you learn about accessing data in hashes?
--If you iterate over a hash without using both the key and value as arguments, weird things happen.

4. What concepts were solidified when working through this challenge?
--We quickly understood what the program was trying to do, even if we struggled a bit with identifying its exact approach. Knowing the program's goal made refactoring easy. This challenge solidified all of the Ruby lessons up to this point.

=end

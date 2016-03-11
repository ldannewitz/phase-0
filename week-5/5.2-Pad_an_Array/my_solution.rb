# 5.2 Pad an Array

# 0. Pseudocode
# What is the input? An array, a minimum size, and an optional object
# What is the output? Either the original array or a padded array
# What are the steps needed to solve the problem?
=begin

Requirements:

If the minimum size is less than or equal to the length of the array, it should just return the array.

If the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size.

pad([1,2,3], 5)
should return

[1,2,3,nil,nil]

Pseudocode:
check IF minimum size is less than or equal to container's length
  IF yes, output the container
END IF

UNTIL container's length is equal to the minimum size
  add the optional or default object to the container
END UNTIL

=end

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if min_size <= array.length
#     return array
#   end

#   until array.length == min_size do
#     array.push(value)
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   copy_array = array.dup
#   if min_size <= copy_array.length
#     return copy_array
#   end

#   until copy_array.length == min_size do
#     copy_array.push(value)
#   end
#   p copy_array
# end

# pad([1,2,3], 5, 'apple')

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array << value while min_size > array.length
  array
end

def pad(array, min_size, value = nil) #non-destructive
  copy_array = array.dup
  copy_array << value while min_size > copy_array.length
  copy_array
end

=begin
REFLECTION:
1. Were you successful in breaking the problem down into small steps?
-Yes, the initial pseudocoding broke the problem into steps and was pretty straightforward.

1. Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
-Yes, the initial solution was almost identical to the pseudocode. We actually found the logic of this challenge fairly easy.

1. Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
-Almost. The logic of the initial solution worked, but if I remember we had one or two small formatting things to tweak. With the until conditional statement we originally had "=" instead of "==" and one other small problem, but they were both resolved quickly by reading the error messages.

1. When you refactored, did you find any existing methods in Ruby to clean up your code?
-Since our initial solution came together quickly, we spent the rest of the pairing session trying other methods we hadn't used before. I had seen a padding technique "in the wild" that I thought would work, but it wasn't quite right. While I was looking that up my pair found a method or two on Ruby docs to try, but ultimately we stuck with our initial solution, just refactored a bit.

1. How readable is your solution? Did you and your pair choose descriptive variable names?
-I think our solution is very readable. The variable names were defined for us in the challenge code, and we didn't use any additional ones.

1. What is the difference between destructive and non-destructive methods in your own words?
-Destructive methods alter the object they are called on whereas non-destructive methods output a copy of the object without changing the original.
=end
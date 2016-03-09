# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented in the file.

# 0. Pseudocode

# What is the input? Positive integer
# What is the output? (i.e. What should the code return?)
# Comma-separated integer as a STRING
# What are the steps needed to solve the problem?

# separate_comma(1000)    #=> "1,000"
# separate_comma(1000000) # => "1,000,000"
# separate_comma(0)       # => "0"
# separate_comma(100)     # => "100"

# Anything < 1,000 can return input as string, no commas
# Anything < 1,000,000 will have one comma
# Could use ranges of numbers 1,000-9,999 or length of #?

# 0. Return integer as string if < 1,000
# 1. Find digits in number (10000)
#   a. Convert to string ("10000")
#   b. Take length (5)
# 2. Insert commas every three digits from end [-4]
#   a. Determine number of commas
#     1 commas = 4-6 digits
#     2 commas = 7-9 digits
#     3 commas = 10-12 digits
#   b. Add each comma [-4] from end of string


# 1. Initial Solution
def separate_comma(integer)
  if integer < 1000 then return integer.to_s end #no commas

  string = integer.to_s
  digits = string.length
  commas = (digits - 1) / 3

  for i in 1..commas
    string.insert((i*-4), ",")
  end
  return string
end

# 2. Refactored Solution
def separate_comma(integer)
  string = integer.to_s
  commas = (string.length - 1) / 3
  for i in 1..commas
    string.insert((i*-4), ",")
  end
  return string
end


=begin
# 3. Reflection
1. What was your process for breaking the problem down? What different approaches did you consider?
--It really helps me to start a problem by looking at several possible inputs and outputs and comparing how they are the same vs. different. This usually leads me to the appropriate conditional statements. For this problem I was immediately thinking about adding commas based on the number of digits of the integer or length of the string. I didn't know if #length could be used on an integer so that was one of the first things I tested.
--I was also originally going to use a while/until loop to add commas and decrease a digit counter until the counter reached 3. I quickly realized this didn't work because multiple digit counts equated to the same number of commas. That's when I had the idea to add the comma variable. After that it was mainly just working out the proper syntax for the "for" loop. I think this is my first time actually using one so it took me a minute.

2. Was your pseudocode effective in helping you build a successful initial solution?
--Admitedly I still do a hybrid pseudocode/coding despite my best efforts. I sketch out a vague idea and then flesh it out as I'm going. It's really hard for me to pseudocode all at once at the beginning because I usually don't catch errors in my logic until after I've started writing the solution and testing outputs.

3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
--I feel like my solution is fairly simple. I only used #to_s, #length, and #insert. Insert I had to look up to check how to structure the arguments that are passed in, but even that is pretty straightforward. In refactoring research I saw warnings that #insert is destructive, but for this problem destroying the "original" string wasn't an issue.

4. How did you initially iterate through the data structure?
  --For loop

5. Do you feel your refactored solution is more readable than your initial solution? Why?
  --Yes. After looking at the finished solution I realized the catch in the first line for integers with no commas was unnecessary because the comma variable for those integers will calculate to 0 and the for loop won't run anyway. I also deleted the "digits" variable since that was solely a placeholder for "string.length," which was only used once.

* The double reverse!
--After writing this I googled "the solution" and actually found a simple one that makes sense to me.
  def separate_comma(number)
    number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
  end
I never would have come up with this, but it was interesting to deconstruct the pieces and see how they all fit together. #each_slice seems like it will be useful.

=end
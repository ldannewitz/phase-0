# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true/false or ArgumentError
# Steps:
# Check that input is 16 numbers
# Separate number into 16 individual numbers
# Starting with the second to last digit, double every other digit until you reach the first digit.
# Sum all the untouched digits and the doubled digits
# (doubles need to be broken apart, 10 becomes 1 + 0)
    # IF doubled is >9, break into two numbers
    # flatten
# IF total is a multiple of ten
  # RETURN true
# ELSE
  # RETURN false



# Initial Solution

# Don't forget to check on initialization for a card length of exactly 16 digits

# class CreditCard

#   def initialize(number)
#     if number.to_s.length != 16
#       raise ArgumentError.new("Credit card number must be 16 digits")
#     end
#     @number = number
#   end

#   def check_card
#     initial = @number.to_s.split("")
#     for i in 0..15
#       # double every other digit
#       if i % 2 == 0
#         initial[i] = initial[i].to_i
#         initial[i] *= 2
#         initial[i] = initial[i].to_s
#       end

#       # split double digits
#       if initial[i].length > 1
#         initial[i] = initial[i].split("")
#       end
#     end

#     #flatten out created 2d arrays
#     doubles = initial.flatten

#     #convert to integers and sum
#     doubles.map!{|x| x.to_i}
#     if doubles.reduce(:+) % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# card = CreditCard.new(4408041234567906)
# p card.check_card

# Refactored Solution

class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Credit card number must be 16 digits")
    end
    @number = number
  end

  def check_card #or #split("")
    initial = @number.to_s.chars.map!(&:to_i)

    (0..14).step(2) do |i|
      initial[i] *=2 # double every other digit
      if initial[i].to_s.length > 1 #2d array for # >9
        initial[i] = initial[i].to_s.split("")
      end
    end

    #flatten 2d arrays, convert to ints & sum
    doubles = initial.flatten.map!{|x| x.to_i}
    if doubles.reduce(:+) % 10 == 0
      return true
    else
      return false
    end
  end
end

card = CreditCard.new(1234567890123456)
p card.check_card

=begin
# Reflection
1. What was the most difficult part of this challenge for you and your pair?
--Dealing with the form of the data. I couldn't figure out a method to split up the digits when they were stored as integers, but then I couldn't sum the numbers when they were stored as strings. I feel like I had to manipulate the data back and forth several times.

2. What new methods did you find to help you when you refactored?
--I did the initial solution on an airplane without internet, and I was quite happy with it. Later I refactored and replaced the for loop with the #step method. I figured it's more efficient because you only iterate through every other number, which is what we want, instead of every number checking if it's even. Besides that I didn't change much. I think I also moved around where some of my integer/string conversions were happening to try and simplify it.

3. What concepts or learnings were you able to solidify in this challenge?
--I liked this challenge because it felt like it pulled together a lot of different Ruby lessons into one: string vs. integer, destructive v. non-destructive, iteration, etc.


=end
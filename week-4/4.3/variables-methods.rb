#ask for first name
puts "What is your first name?"
first_name = gets.chomp

#ask for middle name
puts "What is your middle name?"
middle_name = gets.chomp

#ask for last name
puts "What is your last name?"
last_name = gets.chomp

#greet using full name
puts "Hi there #{first_name} #{middle_name} #{last_name}!"



#ask for favorite number
puts "What is your favorite number?"
fav_num = gets.chomp

#add 1 to fav #
new_fav = fav_num.to_i + 1

#suggest result as bigger and better
puts "#{new_fav} is bigger and better!!!!!"

=begin
How do you define a local variable?
-- local_variable = 13
-- local_variable = "Hello"

How do you define a method?
-- def method(input)
-- end

What is the difference between a local variable and a method?
-- A local variable simply stores a piece of information (string, integer, float) to be used again later. A method can be a mini-program within your program, which has its own inputs, local variables, and outputs.

How do you run a ruby program from the command line?
-- ruby program_name.rb

How do you run an RSpec file from the command line?
-- rspec spec_name.rb

What was confusing about this material? What made sense?
-- I thought the material was a pretty straight forward review of basic Ruby concepts.

Link to 4.3.1 Return a Formatted Address: https://github.com/ldannewitz/phase-0/blob/master/week-4/4.3/address/my_solution.rb

Link to 4.3.2 Defining Math Methods: https://github.com/ldannewitz/phase-0/blob/master/week-4/4.3/math/my_solution.rb

=end
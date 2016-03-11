# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: # of sides 1-6
# Output: random number b/t 1 and 6
# Steps:
# 1. Define Die class
# 2. Define #new to create a new die object w/1-6 sides
# 3. Raise ArgumentError if die object is created with less than 1 side
# 4. Define #sides to return # of sides for die object
# 5. Define #roll to return random # b/t 1-6

# die = Die.new(6) #Creates new die object w/6 sides
# If we pass Die.new a number less than 1, we should raise an ArgumentError. This is done using the raise keyword
# die.sides # returns 6
# die.roll # returns a random number between 1 and 6

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("You gotta have sides!")
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    return (1 + rand(sides))
  end
end



# 3. Refactored Solution






=begin
# 4. Reflection
1. What is an ArgumentError and why would you use one?
--An ArgumentError is raised when something is wrong with the argument passed (ex. passing the wrong number of arugments or passing an argument that is not acceptable). You would raise your own ArgumentError to let users know the argument they are trying to pass doesn't work with the method.

2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
--I used ArgumentError.new. Last week I read all of the exception articles so I didn't have any challenges implementing it.

3. What is a Ruby class?
--A class is a blueprint from which objects are created.

4. Why would you use a Ruby class?
--Classes keep data organized and control which methods work on which objects and how. A good example I read was that in other words, you can have several methods called 'length' - one of which returns the length of a football field, and another the length of a TV program. They'll work differently inside, but your ruby program will know which one to run when - the length of "Soldier Field" is clearly the length of a football field, and the length of "Sherlock" is 90 minutes.

5. What is the difference between a local variable and an instance variable?
--Local variables are the variables that are defined in a method. Local variables are not available outside the method.
--Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.

6. Where can an instance variable be used?
--In any method for that instance.

=end
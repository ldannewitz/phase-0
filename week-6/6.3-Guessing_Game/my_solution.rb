# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: symbol
# Steps:
# Initialize answer
# IF guess is larger than answer
#   RETURN high
# ELSIF guess equals answer
#   RETURN correct
# ELSE
#   RETURN low
# END

# IF most recent guess is correct
#   RETURN true
# ELSE
#   RETURN false
# END


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def solved?
    return @solved
  end

  def guess(guess)
    if guess > @answer
      @solved = false
      return :high
    elsif guess == @answer
      @solved = true
      return :correct
    else
      @solved = false
      return :low
    end
  end
  # Make sure you define the other required methods, too
end


# Refactored Solution

# I originally set @guess as a local variable but deleted it for the refactored solution because it's not called in any other class methods.


=begin
# Reflection
1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
---Objects have two characteristics: the state they are in (i.e., their properties or attributes) and the behaviors they can perform. Instance variables represent the object's attributes and can be used within the class. Instance methods are the objects behaviors.

2. When should you use instance variables? What do they do for you?
---Instance variables have a larger scope than local variables. Local variables are only available inside the method where they are defined; they are not shared across the entire object. Instance variables should be uesd when you want to variable to be available to every method of an object.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
---In this challenge the flow control is the IF/ELSIF/ELSE statement. The code executes in sequential order and performs the first branch that it matches with. I wrote the branches and the return symbols first, and I struggled a bit when adding the @solved boolean statements. I added them after the return statements so the code obviously didn't work. Quick fix though!

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
---Symbols can have performance benefits because they have numeric representations. They also can't be changed at runtime, which for this program is perfect.

=end
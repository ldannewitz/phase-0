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
    @guess = guess
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


=begin
# Reflection
1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object? When should you use instance variables? What do they do for you?

2. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? Why do you think this code requires you to return symbols? What are the benefits of using symbols?

=end
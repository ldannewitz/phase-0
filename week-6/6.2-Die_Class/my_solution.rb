# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode
=begin
# Input: array of strings
# Output: one random string or ArgumentError
# Steps:
Check if there are labels
  IF not, raise argument error
Set # of sides from # of labels
Define #sides to output # of sides
Generate random # 1-# of sides
## output string associated with random #

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die.sides # still returns the number of sides, in this case 6
# die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

=end

# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Die cannot be empty")
    end
    @labels = labels
    @sides = labels.length
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(@sides)]
  end
end

# Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# labels   [0]  [1]  [2]  [3]  [4]  [5]
# sides = 6


# Refactored Solution


=begin
# Reflection
1. What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
--This die class added a little bit of complexity because we passed in a list of arbitrary labels instead of using assumed integers. The rest of the logic was almost identical though.

2. What does this exercise teach you about making code that is easily changeable or modifiable?
--Because my variables and logic were clearly laid out from the last challenge, it was easy to modify the code for this challenge.

3. What new methods did you learn when working on this challenge, if any?
--No new methods

4. What concepts about classes were you able to solidify in this challenge?
--I worked through the problem from scratch first before looking at last week's solution to practice the basic class concepts.
=end
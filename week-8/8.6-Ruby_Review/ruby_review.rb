# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# assert { name == "bettysue" }
#   Check name
#     IF name is "bettysue" THEN RETURN true
#     ELSE RETURN false
#   Call assert method with return value (true/false)
#     IF return value is true THEN yield
#     ELSE raise "Assertion failed!"

# assert { name == "billybob" }
#   Check name
#     IF name is "billybob" THEN RETURN true
#     ELSE RETURN false
#   Call assert method with return value (true/false)
#     IF return value is true THEN yield
#     ELSE raise "Assertion failed!"


# 3. Copy your selected challenge here

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

# card = CreditCard.new(1234567890123456)
# p card.check_card



# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Assertion failed!" unless yield
end

card = CreditCard.new(1234567890123456)
assert { card.check_card == false }


# 2nd example
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

def assert
  raise "Assertion failed!" unless yield
end

game = GuessingGame.new(13)
assert { game.solved? == false }
assert { game.guess(10) == :low}
assert { game.guess(15) == :high}
assert { game.guess(13) == :correct}


=begin

# 5. Reflection
1. What concepts did you review or learn in this challenge?
--I learned how to use an assert method in driver test code to test whether the code is working correctly.

2. What is still confusing to you about Ruby?
--Nothing that we've learned this far about Ruby still confuses me, especially after dealing with JS.

3. What are you going to study to get more prepared for Phase 1?
--If I have time I plan to finish the entire Ruby Review module and study any areas that I struggle with. I'd also like to research TDD a little because I know we learn how to write it in Phase 1.


=end
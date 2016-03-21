# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # store 5 bingo letters in array
  # reference them with rand
  # call number (1-100) with rand

# Check the called column for the number called.
  #fill in the outline here
  # figure out what board index matches with each column
  # check the inner array for that column for the number

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # IF the number matches, replace with an "x"

# Display a column to the console
  #fill in the outline here
  # use the index numbers for each column to display to console

# Display the board to the console (prettily)
  #fill in the outline here
  # figure out what "prettily" means

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = %w{B I N G O} #letters[0]-letters[4]
    @column_number = rand(5)
    column = letters[@column_number]
    @number = rand(1..100)
    puts column + ' ' + @number.to_s
  end

  def check_board
    for i in 0..4
      if @bingo_board[i][@column_number] == @number
        @bingo_board[i][@column_number] = "X "
        puts
        puts "Your board now looks like:"

        @bingo_board.each do |inner|
          puts inner.each {|n| n}.join(" ")
        end
        puts
      end
    end
  end

end

# Refactored Solution

# I had the rows and columns backward, so B was [0][0]-[0][4] instead of [0][0]-[4][0]. Luckily this was a very easy fix so I didn't want to copy and paste the entire code.



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

      #  B   I    N   G   O
  # [0][0]  [1]  [2] [3] [4]
  # [1][0]  [1]  [2] [3] [4]
  # [2][0]  [1]  [2] [3] [4]
  # [3][0]  [1]  [2] [3] [4]
  # [4][0]  [1]  [2] [3] [4]

new_game = BingoBoard.new(board)

# 25.times do
#   new_game.call
#   new_game.check_board
# end


=begin
#Reflection

1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
--After reading the instructions for this challenge I had a vague idea of how I wanted to solve it, but pseudocoding helped solidify the details. I think my style could still be improved. I tend to pseudocode for myself and my own understanding of the challenge, but I'm not sure how easy it is for someone reviewing my code to follow along.

2. What are the benefits of using a class for this challenge?
--It makes for a cleaner code because all of the logic and variables are inside the class. It would also allow you to easily create multiple different bingo boards by simply creating more instances of the class.

3. How can you access coordinates in a nested array?
--The indexing of nested arrays just adds an additional index number to the access code, array[0][0] vs. array [0].

4. What methods did you use to access and modify the array?
--#rand, #to_s, #each, #join

5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
--I was able to get my code running smoothly using old methods. If I review it in a day or two maybe I'll be able to find a fresh take on the challenge.

6. How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?
--I used instance variables when I needed to reference the variables in another class method. I used local methods when I only needed the variable in that one method.
--As I mentioned above, I had the rows and columns backwards, but luckily I caught it while checking the output.

=end
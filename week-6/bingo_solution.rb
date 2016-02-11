# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # take the collection of "B", "I", "N", "G", "O" and numbers between 1 and 100 
  # out of the collection return a random letter and a random number 

# Check the called column for the number called.
  # IF the number called is in the column of the letter called return true

# If the number is in the column, replace with an 'x'
  #IF the check method returns true replace the number with an ‘x’

# Display a column to the console
# IF number has been replaced by ‘x’ in the column return the column

# Display the board to the console (prettily)
  #IF column returned, print the entire board showing the ‘x’

# Initial Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
    @name = ['B','I','N','G','O']
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

  def call
     p "#{@letter}#{@number}"
  end

def check

  #This hash puts the letters as keys with the subarrays as values: Hash[@name.map {|x| [x, @bingo_board[0]]}]

    # full_board = @bingo_board.insert(0,@name)
    letter_position = @name.index(@letter)
    @bingo_board.any?{|num| num.include?(@number)}
      if
        num_position = @bingo_board.index {|num| num == @number}

        @bingo_board.map!.with_index do |num, index|
          if index == num_position && index == letter_position
            num.to_s.gsub!(num.to_s,"X")
          else
            num
          end
        end
          @bingo_board.each_slice(5).to_a
      else
          @bingo_board.each_slice(5).to_a        
      end
  end
end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
    @name = ['B','I','N','G','O']
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

  def call
     p "#{@letter}#{@number}"
  end

def check
    letter_position = @name.index(@letter)
    @bingo_board.any?{|num| num.include?(@number)}
      if
        num_position = @bingo_board.index {|num| num == @number}

        @bingo_board.map!.with_index do |num, index|
          index == num_position && index == letter_position ? num.to_s.gsub!(num.to_s,"X") : num
        end
          @bingo_board.each_slice(5).to_a
      else
          @bingo_board.each_slice(5).to_a        
      end
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call

#Reflection
# 1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Breaking the many parts down into smaller parts was difficult on this challenge. For multi part problems I need
# to work on my pseudocode being more specific.

# 2. What are the benefits of using a class for this challenge?
# Using a class for this challenge is beneficial because you can use the instance variables for the different methods 
#needed to accomplish the goal.
 
# 3. How can you access coordinates in a nested array?
# You can access coordinates in nested arrays by either iterating over them or you can temporarily flatten them turning
# the nested array in one array. 

# 4. What methods did you use to access and modify the array?
# I used flatten, map!, .with_each_index, and any? to access and modify the array.

# 5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what
# purpose does it serve, and how is it called?
# I learned the method any? which will iterate through a collection and return true if the value stated in the block 
# code is present.

# 6. How did you determine what should be an instance variable versus a local variable?
# I reviewed what each method should return and if they both required the same piece of information I made it an instance
# variable. If it was only needed for the one method I made it a local variable.

# 7. What do you feel is most improved in your refactored solution?
# In refactoring I tried making it a little more readable.

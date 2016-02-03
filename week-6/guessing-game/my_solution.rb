# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a number as a guess
# Output: tells user if they are correct and if they solved the game
# Steps: Create a new class for the guessing game
# 	     Setup a constructor for the answer to the game
# 	     Define the guess logic
# 	       IF the guess is lower than the answer it should return “low”
# 	       IF the guess is higher than the answer it should return “high”
# 	       IF the guess is the same as the answer it should return “correct”
# 	     Define what action needs to be taken when the problem is solved
# 	       IF the most recent guess was correct it should return “true”
#          IF not it should return “false”

# Initial Solution
class GuessingGame
    def initialize(answer)
        @answer = answer
    end
    
    def guess(number)
        @number = number
    
        if @number < @answer
            p :low
        elsif
            @number > @answer
            p :high
        else
            @number == @answer
            p :correct
        end
    end
    
    def solved?
	    if @number == @answer
	    	p true
    	else
	    	p false
        end
    end
end

# Refactored Solution
class GuessingGame
    def initialize(answer)
        @answer = answer
    end
    
    def guess(number)
        @number = number
    
        if @number < @answer
            p :low
        elsif
            @number > @answer
            p :high
        else
            @number == @answer
            p :correct
        end
    end
    
    def solved?
    	p @number == @answer ? true : false
    end
end

# Reflection
# 1. How do instance variables and methods represent the characteristics and behaviors (actions) of a
# real-world object?
# Instance variable can represent real-world input. In the case of this challenge it was either the 
# answer or the user’s number. The methods represent the actions to take to complete the game in this case.
# Naming the methods guess and solved? represent the step needed to get the correct answer and let the user 
# know they have solved the game.

# 2. When should you use instance variables? What do they do for you?
# Instance variables should be used within a class. They allow you to pass information over the methods
# within the class.

# 3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did
# you struggle with?
# Flow control is used to select different outcomes based on the user's input. This is done by using
# conditional statements. In the case of this challenge IF, ELSIF, ELSE were used to determine if the
# the user's guess was higher, lower, or the same as the answer. I did not have any trouble using flow
# control in this challenge.

# 4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think this code requires you to return symbols because once a symbol is created it always represents 
# the same object. Once a symbol is created it stays constant. 
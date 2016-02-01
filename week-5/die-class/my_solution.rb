# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: A number to represent how many sides a die has
# Output: A random number from one side of the die
# Steps: create a new class for the die roll
#	   setup a constructor for the sides of the die
#	   set sides to instance variable for class (@sides)
#	   IF sides is less than 1, create an error stating the number has to be greater than 0.
#	   define what 'sides' are (the instance variable)
#	   define what action needs to be taken when die is rolled
#		 return a random value between 1 and the number of sides on the die

# 1. Initial Solution
class Die
  def initialize(sides)
    @sides = sides
    
    if @sides < 1
      raise ArgumentError.new("Enter a integer larger than 0")
    end    
  end

  def sides
    @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
      raise ArgumentError.new("Enter a number larger than 0") if @sides < 1
  end

  def sides
    @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 4. Reflection
# 1. What is an ArgumentError and why would you use one?
# An ArgumentError is an error that occurs when the arguments are wrong and there isn’t a more specific 
# exception class. It is used to create a error message that shows in the console if certain criteria is
# not met. In this challenge it was used to create an error if the number entered for sides was less than
# one because a die cannot have 0 sides.

# 2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used the rand method to randomize the range between 1 and the number of sides of the die. When using the 
# method I needed to remember how many '.' to use on the range. Once I remembered it should only be 2 to 
# include all the sides the method worked as it should.	

# 3. What is a Ruby class?
# A class is a blueprint. It provides behaviors to objects. 

# 4. Why would you use a Ruby class?
# You would use a Ruby class because you can create one to meet your exact needs.

# 5. What is the difference between a local variable and an instance variable?
# A local variable can only be used within the specific method it is nested in. An instance variable can be 
# used within the class it is nested in and between methods in the class.

# 6. Where can an instance variable be used?
# An instance variable can be used within the class it is nested in and between methods in the class.
# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A collection of values to represent how many sides a die has
# Output: A random value from one side of the die
# Steps: create a new class for the die roll
#	   setup a constructor for the sides of the die which will be named labels
#	   set labels to instance variable for class (@labels)
#	   IF collection is empty, raise an error stating the the collection cannot be empty.
#	   define “sides” as the length(number of values) of the label collection
#	   define what action needs to be taken when die is rolled
#		   return a randomly selected value from the collection provided


# Initial Solution
class Die
  def initialize(labels)
      @labels = labels
      
      if @labels == []
        raise ArgumentError.new("Array cannot be empty")
      end    
  end

  def sides
      @sides = @labels.length
  end

  def roll
  	return @labels.sample
  end
end

# Refactored Solution
class Die
  def initialize(labels)
      @labels = labels
        
      raise ArgumentError.new("Array cannot be empty") if @labels == []   
  end

  def sides
      @sides = @labels.length
  end

  def roll
   return @labels.sample
  end
end

# Reflection
# 1. What were the main differences between this die class and the last one you created in terms
# of implementation? Did you need to change much logic to get this to work?
# This challenge was very similar to the die class returning a number. The structure of setting up
# the class was the same. The main difference was to make sure it took the array and returned a random 
# value instead of the side number. There were only small changes that needed to be make to have the new 
# die class work as expected.

# 2. What does this exercise teach you about making code that is easily changeable or modifiable? 
# This showed me that if you write clear easy to read code it can be slightly tailored to accomplish a new task.

# 3. What new methods did you learn when working on this challenge, if any?
# I learned the .sample method for arrays. It is similar to the .rand method used in the first challenge 
# because it will return a random value from an array.

# 4. What concepts about classes were you able to solidify in this challenge?
# The repetition on this challenge from the first die class challenge help solidify the structure of how 
# to setup a class. 
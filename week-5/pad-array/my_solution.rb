# Pad an Array

# I worked on this challenge with: Maeve Tierney

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#  (the collector, and the minimum size, optional)

# What is the output? (i.e. What should the code return?)
#  should return the collector with the minimum number of objects and if included the optional argument

# What are the steps needed to solve the problem?
# 1) create an array and give it a name
# 2) iterate over the array for each object in the # array if the number of objects is greater than # the minimum size specified then return the 
# original array. 
# 4) if the array is smaller than the minimum add optional or nil to meet the requirement. 

# 1. Initial Solution
def pad(array, min_size, value = nil) 
  arr_len = array.length
  array_copy = Array.new(array)

  if arr_len < min_size 
    padding_size = min_size - arr_len

    padding_size.times do 
      array_copy.push(value) 
    end 
  end  

  return array_copy
end

def pad!(array, min_size, value = nil) 
  arr_len= array.length
  array_copy = array
  
  if arr_len < min_size 
    padding_size = min_size - arr_len

    padding_size.times do 
      array_copy.push(value)
    end 
  end 
  
  return array_copy 
end

# 3. Refactored Solution

# def pad(array, min_size, value = nil) #non-destructive
#   list = []
  
# 		if array.length == 0
# 		list = [value] * min_size
# 		end
    
#   array.each do |object|
      
# 		if array.length >= min_size 
# 			list=array 
# 		else array.length < min_size
# 			list = array << value
# 		end
# 	end
#   p list
# end


# 4. Reflection
# 1. Were you successful in breaking the problem down into small steps?
# I felt we were successful in breaking the problem down to manageable steps.

# 2. Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Translating our pseudocode was a little more difficult than expected. We had a good idea of what we wanted
# to accomplish but we struggled converting it into code.

# 3. Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our initial solution did not pass the tests. We struggled getting the logic correct. We used ‘p’ to 
#return the ‘list’ in specific parts of the code to see what was being generated. From there we could 
#adjust our code.

# 4. When you refactored, did you find any existing methods in Ruby to clean up your code?
# During refactoring we only changes out the multiple 'if' to an else to simplify the code a little.

# 5. How readable is your solution? Did you and your pair choose descriptive variable names?
# I find our code fairly easy to read. The variables are simple to follow.

# 6. What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods will “overwrite” the original input. Non-destructive will return the new input
# but still has the original input stored.
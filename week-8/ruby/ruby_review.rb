# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# Input: A collection of numbers
# Output: a collection of numbers with words replacing numbers divisible by 3, 5, and 15
# Steps: define super fizzbuzz to accept a collection of numbers
#   LOOP through the collection of numbers
#     IF the number is divisible by 15, the number should be replaced with “FizzBuzz”
#     IF the number is divisible by 3, the number should be replaced with “Fizz”
#     IF the number is divisible by 5, the number should be replaced with “Buzz”

# Initial Solution
def super_fizzbuzz(array)
    
result = []

  array.each do |num|
    if num % 15 == 0
      result.push("FizzBuzz")
    elsif num % 3 == 0
      result.push("Fizz")
    elsif num % 5 == 0
      result.push("Buzz")
    else
      result.push(num)
    end
  end
 result
end

# p super_fizzbuzz (1..100).to_a

# Refactored Solution
def super_fizzbuzz(array)
    
  array.map do |num|
    if num % 15 == 0
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end
end

# p super_fizzbuzz (1..100).to_a

# Reflection
# 1. What concepts did you review or learn in this challenge?
# I reviewed iterating through an array and replacing values with new values.

# 2. What is still confusing to you about Ruby?
# I chose this the FizzBuzz challenge because I wanted to review iteration to make sure I understood the basics with 
# adding some logic to the loop. There wasn’t anything that confused me with the challenge.

# 3. What are you going to study to get more prepared for Phase 1?
# I am going to review more complex iterations.
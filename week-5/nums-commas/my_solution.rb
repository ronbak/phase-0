# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a number
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem? word with comma in thousands place
#     take number and turn into a word
#     break word up into individual letters with spaces
#     reverse word so comma can be added from back of word
#     take word add comma every 3 spaces
#     put word back together with commas inserted
#     reverse word so it is correctly refelcting the number


# 1. Initial Solution
def separate_comma (num)

    word = num.to_s
    word = word.split(//).reverse
 
    new_word = []
    
    word.each_slice(3) do |letter|
        new_word.push(letter)
        new_word.push(',')   
    end

    new_word.flatten.reverse.join(' ') 
    p new_word[1..-1]
end
  
#separate_comma(123456789)


# 2. Refactored Solution
def separate_comma (num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

# 3. Reflection
# 1. What was your process for breaking the problem down? What different approaches did you consider?
# I tried breaking the problem down into small enough section where I could implement them into the
# initial solution. 

# 2. Was your pseudocode effective in helping you build a successful initial solution?
# I am still struggling with breaking the problem down which in turn makes my initial code much harder
# to create and add to correct logic.

# 3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# In the refactor char, each_slice, reverse, and join methods were used. I found it much easier to refactor 
# and not get any failures. I found I can search Ruby Doc and find a method that I think would work. Once I
# read the description I try implementing it determine if it will execute how I expect. If it does I can
# proceed to chain the next method.

# 4. How did you initially iterate through the data structure?
# I iterated through my data structure with each_slice(3). 

# 5. Do you feel your refactored solution is more readable than your initial solution? Why?
# My initial solution still fails the rspec. My refactored solution makes more sense to me in my head
# chaining together the built in methods.
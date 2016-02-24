# Reverse Words

# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# Input: a string
# Output: a string with the letters in reverse order
# Steps: create a method to reverse a sentence
#        turn sentence into a collection of words.
#        create a new empty collector to hold reversed words
#		    loop through the collection and reverse each word
#		    add each reversed word to the empty collector
#	     convert the collection of reversed words into a sentence

# Initial Solution
def reverse_words(string)
  array = string.split(' ')

  new_array = []

  array.each do |word|
    new_array.push(word.reverse)
  end
  p new_array.join(' ')
end

# reverse_words("Hello nice to meet you")

# Refactored Solution
def reverse_words(string)

  array = string.split(' ')

  array.map! do |word|
    word.reverse
  end
  p array.join(' ')
end

# Reflection
# 1. What concepts did you review in this challenge?
# This challenge reviewed converting a string to an array and iterating through the array to change the valves 
# 2. What is still confusing to you about Ruby?
# Iterating through nested hashes is still a little confusing.
# 3. What are you going to study to get more prepared for Phase 1?
# I am reviewing previous challenges and completing additional review problems.
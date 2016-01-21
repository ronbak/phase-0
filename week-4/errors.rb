# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [2.25] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? errors.rb
#
# 2. What is the line number where the error occurs? 170
#
# 3. What is the type of error message? Syntax error
#
# 4. What additional information does the interpreter provide about this type of error? unexpected end-of-input, expecting keyword_end
#
# 5. Where is the error in the code? The error is at the end of the code.
#
# 6. Why did the interpreter give you this error? The code needs an “end” to complete the method. 
#

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs? 36
#
# 2. What is the type of error message? main error
#
# 3. What additional information does the interpreter provide about this type of error? undefined local variable or method `south_park' for main:Object
#
# 4. Where is the error in the code? The beginning
#
# 5. Why did the interpreter give you this error? The local variable has not been defined.
#

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs? 57
#
# 2. What is the type of error message? main error
#
# 3. What additional information does the interpreter provide about this type of error? undefined method `cartman' for main:Object (NoMethodError)
#
# 4. Where is the error in the code? The beginning
#
# 5. Why did the interpreter give you this error? the method cartman() is not complete.
#

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs? 65
#
# 2. What is the type of error message? ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error? wrong number of arguments (1 for 0)
#
# 4. Where is the error in the code? After cartmans_phrase
#
# 5. Why did the interpreter give you this error? There are no arguments in the head of the method but when the method was called an argument was used.
#

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs? 84
#
# 2. What is the type of error message? ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error? wrong number of arguments (0 for 1)
#
# 4. Where is the error in the code? cartman_says when the method is called
#
# 5. Why did the interpreter give you this error? There is one argument is the header of the method but when it was called there is no argument.
#



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs? 105
#
# 2. What is the type of error message? ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error? wrong number of arguments (1 for 2)
#
# 4. Where is the error in the code? cartmans_lie
#
# 5. Why did the interpreter give you this error? There are 2 arguments in the header of the method, but only one was used when calling the method.
#

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs? 124
#
# 2. What is the type of error message? TypeError
#
# 3. What additional information does the interpreter provide about this type of error?  String can't be coerced into Fixnum
#
# 4. Where is the error in the code? the '*'
#
# 5. Why did the interpreter give you this error? A string can be multiplied by a number to have the string show x number of times but you can't multiply a number by a string.
#

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs? 139
#
# 2. What is the type of error message? ZeroDivisionError
#
# 3. What additional information does the interpreter provide about this type of error? divided by 0
#
# 4. Where is the error in the code? In the division "/"
#
# 5. Why did the interpreter give you this error? A number can't be divided by 0.
#

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs? 155
#
# 2. What is the type of error message? LoadError
#
# 3. What additional information does the interpreter provide about this type of error? cannot load such file
#
# 4. Where is the error in the code? require_relative
#
# 5. Why did the interpreter give you this error? The cartmans_essay.md does not exist.
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# 1. Which error was the most difficult to read?
# The TypeError was the most difficult to read.

# 2. How did you figure out what the issue with the error was?
# Searched ruby-doc and read what can cause the error.

# 3. Were you able to determine why each error message happened based on the code? 
# Yes, by the end of the challenge I feel comfortable being able to look at an error message and figure out what's wrong. 

# 4. When you encounter errors in your future code, what process will you follow to help you debug?
# First look to see which line is causing the error and where the error is. Then look at the error type and additional information. 
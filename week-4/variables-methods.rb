puts 'Please enter your first name:'
  first_name = gets.chomp
puts 'Please enter your middle name:'
  middle_name = gets.chomp
puts 'Please enter your last name:'
  last_name = gets.chomp

puts 'It is a pleasure meeting you ' + first_name +' '+ middle_name +' '+ last_name + "!"


puts 'Please enter your favorite number:'
  num = gets.chomp
new_num = num.to_i + 1

puts 'Your number ' + num + ' is good, but I think ' + new_num.to_s + ' is a little bigger and better!'

=begin
Release 4:
Return a Formatted Address - https://github.com/robertreith/phase-0/blob/master/week-4/address/my_solution.rb
Defining Math Methods - https://github.com/robertreith/phase-0/blob/master/week-4/math/my_solution.rb

Release 6:
1.How do you define a local variable?
Local variables are nested inside of methods and can only be used in that method. Local 
variable start with a lowercase letter or an underscore (_).

2.How do you define a method?
A method is a task performed on an object in ruby.

3.What is the difference between a local variable and a method?
Local variable will not work outside of the method they are nested in. Methods can be used 
multiple time in the same code.

4.How do you run a ruby program from the command line?
To run a ruby program from the command line you use the command: ruby <filename>.rb.

5.How do you run an RSpec file from the command line?
To run an RSpec file from the command line you use the command: rspec <spec-file-name>.rb.

6.What was confusing about this material? What made sense?
The part that I got hung up on in this challenge was getting the RSpec to come back with no errors. 
I realized my error was using “puts” instead of “p” in my code. Once I change it out on the 2 
exercises everything was passing. Many of the string methods are self explanatory and easy to use.	
=end
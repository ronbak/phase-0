#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: A student's name
# Output: A sentence greeting the student
# Steps: Create a class to store the student’s name
#		Allow name to be access from outside of the class
#		Set the name to a specific student’s name
#	  Create a class to store the greeting
#		Create a way to gather information from a different class
#		Define what the greeting message will be including the student's name

class NameData

	attr_reader :name

	def initialize
		@name = "Bobby"
	end
end

class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello " + @namedata.name + '! How wonderful to see you today.'
	end
end

greet = Greetings.new
greet.hello

# Reflection
# Release 1
# 1. What are these methods doing?
# These methods are storing the instance variables so they can be returned when the method is called.

# 2. How are they modifying or returning the value of instance variables?
# They are returning the instance variable by calling the method they are associated with.

# Release 2
# 1. What changed between the last release and this release?
# In this release it removed the “what_is_age” method and replaced it with attribute “attr_reader :age”.
# The attribute is placed after the class and before the “initialize” method.

# 2. What was replaced?
# The “”what_is_age” method was replaced.

# 3. Is this code simpler than the last?
# Yes, it makes it easier to read with removing the method and creating an attribute.

# Release 3
# 1. What changed between the last release and this release?
# In this release it removed the “change_my_age” method and replaced it with attribute “attr_writer :age”.
# The attribute is placed after the class and before the “initialize” method.

# 2. What was replaced?
# The “change_my_age” method was replaced. There was also the change done when calling age from
# “instance_of_profile.what_is_age” to “ instance_of_profile.age”.

# 3. Is this code simpler than the last?
# Yes, the change has made the code more readable and easier to follow.

# Release 6
# 1. What is a reader method?
# A reader method only allows the instance variable value to be returned in outside classes, not changed.

# 2. What is a writer method?
# A writer method allows the instance variable value to be changed in outside classes, but not readable.

# 3. What do the attr methods do for you?
# The attr methods allow you to access (read and/or write) instance variables outside of the class they
# were created.

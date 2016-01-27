# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
 
    count = 0
       
    list_of_integers.each do |integer|
        
        if integer >= lower_bound && integer <= upper_bound
            count = count + 1
        end
    end
 return count
end


# input: A container with a set of numbers. A range with two numbers, a lower limit and upper limit
# steps: When the container is empty the result should be 0
#        When the container has numbers, see if they fit into the range.
# 		 When the numbers are within the range count how many numbers there are 
# output: Return how many numbers are in the container within the specified range
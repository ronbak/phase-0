# Calculate the mode Pairing Challenge

# I worked on this challenge with: Jack Hamilton and Bobby Reith.

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? The input will be a list with ojbects
# What is the output? (i.e. What should the code return?) Output will be a  container with the most freqent value/s
# What are the steps needed to solve the problem?
#  Create a new conainer with key/value pairs
#  Go through each item in the list and add it to the key/value pair container if it doesn't exist.
# Otherwise we increment its keys value by 1.
# Create a new empty list.
# Create a max counter equal to zero.
# Go through each item in the key/value pair container and if the value is bigger than max counter then set make counter to that value.
# Go through each item in the key.value pair container and add it to the empty list.
# Return the new list.


 # 1. Initial Solution
def mode(list)
  hash_list = {}
  list.each {|x| 
    if ( hash_list[x] == nil )  
      hash_list[x] = 1
    else
      hash_list[x] += 1
    end
  }

  new_list = []
  max_num = 0  # max number found, so far
  hash_list.each {|key, value| if (value > max_num) then max_num = value end }
  
  # we know what the max number is overall
  
  hash_list.each {|key, value| new_list << key if (value == max_num) }
  
   new_list
end


# 3. Refactored Solution

def mode(list)
  hash_list =  Hash.new(0)
  list.each {|x| hash_list[x] += 1 }

  p hash_list
  
  max_num = hash_list.max_by { |key, value| value }[1]
  
  return hash_list.partition { |key, value|
    value == max_num
  }[0].map{|arr| arr[0] }
 

end

  # parition returns an array where element 0 = array of true matches
  # element 1 = array of false matches
  # In addition, each key-value pair is in a two-element array (not a hash)
  # with key as first element, value as second element.
  # Since we only care about array of keys with true value matches == max_num, 
  # we then create an array of keys (element 0 of the key-value array) using "map"




# 4. Reflection

# * Which data structure did you and your pair decide to implement and why?

# We used hash because we needed to maintain a counter for each item in the list, since it could be repeated.

# * Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

# Yes. Having had more practice with pseudo-code by this time, it made this implementation easier.
  
# * What issues/successes did you run into when translating your pseudocode to code?

# We didn't really run into issues during the pseudo-code to code translation. Rather we had difficulty in refactoring to find the correct, most-efficient built-in methods.
  
# * What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used several including partition, map, max_by and each. We did find some good ones, like max_by and partition. We had difficulty trying to create an array from "each" only to later realize what we needed was "map".
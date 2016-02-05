# Your Names
# 1)Bobby Reith
# 2)Megan Swanby

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = { "cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3 # the number of keys in the hash
  
  if library.has_key?(item_to_make) == false    
      raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end
  # library.each do |food| # checking to see if item is in library
  #   if library[food] != library[item_to_make]
  #     error_counter += -1 # if its not in the library take 1 one
  #   end
  # end

  # create error message stating item is not in library
    # raise ArgumentError.new("#{item_to_make} is not a valid input") if error_counter > 0

  serving_size = library[item_to_make]
   # = library.values_at(item_to_make)[0] # creates an array of the values in the hash
  remaining_ingredients = num_of_ingredients % serving_size # leftovers that can be used for something else

  case remaining_ingredients # this will say how many whole items can be made with the number of ingredients provided
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else # Returns that same whole number of items that can be made pluse any leftover ingredient amounts
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE #{remaining_ingredients/serving_size} of #{item_to_make}"
  end

#  def suggested_items(num)
#   remaining_ingredients.each do |key,value|
#      value % serving_size 
# end
# p key
#  end

  # def suggested_items
  # remaining_ingredients.each{|key,value| value % serving_size return key}
  # end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# 1. What did you learn about making code readable by working on this challenge?
# I learned it can be challenging to look at working code and change it to make it more readable. Once I get past that
# the final product of refactoring really help make the code easier to follow.

# 2. Did you learn any new methods? What did you learn about them?
# I learned the has_key? method allows you to search through a hash and return true if a specific key is present.

# 3. What did you learn about accessing data in hashes? 
# I learned there are many built in methods that allow you to access the data in a hash.

# 4. What concepts were solidified when working through this challenge?
# This challenge helped me better understand the need to refactor to make the code more readable.
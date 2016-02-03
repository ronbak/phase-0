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
#   serving_size.each {|key,value| value % serving_size p key}
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
# Making the code more readable by refactoring is currently difficult for me because when I see working 
# code I don’t want to break it. I learned that once you make the code more readable it will not only allow
# you to understand the code better but for others to understand it better as well.

# 2. Did you learn any new methods? What did you learn about them?
# I learned the has_key? method to check if the hash contains a key. This was useful when checking the
# hash to determine if the argument error should be raised.

# 3. What did you learn about accessing data in hashes? 
# Accessing data in hashes can be done easily and has many benefits. In this challenge using the method
# to determine if a key existed was very useful.

# 4. What concepts were solidified when working through this challenge?
# Different aspects of hashes were solidified. I also realized that I need to stop overcomplicating the 
# problem and work on readability and simplicity when coding.
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:   
  # create a collector for items with quanities
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: list of items with quantities[hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: new entry to list with item and amount
#        insert new item to current list with quantity
# output: item with quantity

# Method to remove an item from the list
# input: spefify item and quantity to remove
# steps: remove item and quantity
# output: current list with item and quantity removed

# Method to update the quantity of an item
# input: item with changing the quantity 
# steps: find item and change quantity to new amount
# output: list with new quantity

# Method to print a list and make it look pretty
# input: the full list with quantities
# steps: print each item with quantity on seprate line
# output: pretty list

 
def create_list(items)
  groceries = items.split(' ') 
    list = {} 
  groceries.each do |item|
    list[item] = 1
  end
 return list
end

def add_item(item, quantity, list)
   list[item] = quantity
  list
end

def remove_item(item, list)
    list.delete(item)
  list
end

def update_quantity(item, quantity, list)
    list[item] = quantity
  list
end

def print_list(list)
     list.each do |key, value|
   puts "Buy #{value} of #{key}."
  end
end


# 1. What did you learn about pseudocode from working on this challenge?
# 	I learned that pseudocode is very useful. Writing it in plain english makes it easier to
#     translate into actual code. Good pseudocode also give you a reference point to look back 
#     on to make sure you are going in the right direction.
# 2. What are the tradeoffs of using Arrays and Hashes for this challenge?
# 	We chose to use hashes for this challenge because we felt it was better to have the grocery
# 	item as the key and the quantity as the value. Since on a grocery list you would not list 
# 	the same item twice, every key is unique. With arrays we would have had to build one for the
# 	items and one for quantities. Then make sure we had the right values with the right indexes.
# 3. What does a method return?
# 	A method has a default return of the value of the last statement.
# 4.What kind of things can you pass into methods as arguments?
# 	You can use objects, strings, arrays, hashes, integers, and other methods.
# 5. How can you pass information between methods?
# 	Information can be passed between methods but using an already created method as an argument. 
# 6. What concepts were solidified in this challenge, and what concepts are still confusing?
# 	The importance of pseudocoding was definitely solidified. Passing information from one method
# 	to another still seems a little confusing but after this challenge I feel much more comfortable
# 	with the material. 

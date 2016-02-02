# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

 array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
 p array[1][1][2][0]
# # ============================================================

# # Hole 2
# # Target element: "congrats!"

 hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# CORRECT
 p hash[:outer][:inner]["almost"][3]

# # attempts:
# # ============================================================
# # INCORRECT
# # p hash[outer:][inner:]["almost"][3]
# # p hash[outer][inner]["almost"][3]
# # p hash["outer"]["inner"]["almost"][3]
# # ============================================================

# # Hole 3 Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
 p nested_data[:array][1][:hash]
# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

 number_array = [5, [10, 15], [20,25,30], 35]


number_array.each do |element|
    if element.kind_of?(Array)
        element.each{|inner| p inner + 5}
    end
end  

# refactor
 number_array = number_array.flatten.map { |num| num + 5 }

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names = startup_names.flatten.map { |name| p name + 'ly' }

# Reflection

# 1. What are some general rules you can apply to nested arrays?
# Nested arrays behave similarly to a regular array. The nested arrays are still indexed in 
# the same way and can be accessed in a similar manner with the additional brackets following
# the typical way to pull a value from an array with the index number.

# 2. What are some ways you can iterate over nested arrays?
# You can iterate over the entire array itself or pull the subarrays values and iterate over them if needed.

# 3. Did you find any good new methods to implement or did you re-use one you were already familiar with?
# What was it and why did you decide that was a good option?
# We used the flatten and map methods which we were already familiar with. We used them because they 
# accomplished the goal we needed for both release 3 and the bonus with only changing the value to be
# added to the value. We also felt they were easy to read because they are some of the more common methods.
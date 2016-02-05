# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Patrick Skelley.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A credit card number
# Output: Deterimation of cedit card is valid by returning true of false
# Steps: Setup constuctor to determine if the infomation provide has the correct number of digits (16)
#   		IF number does not equal 16 digits return error stating "wrong number of digits"
#        Define the first step to validate the card number
#			double ever other digit starting with the first digit
# 		 Define the second step to validate the card number
# 			 Add up all the digits
# 			 	If digit is higher than 9, split number into two digits (10 = 1 + 0)
# 		 Define the thrid step to validate the card number
#   	 	IF total is a multiple of 10 card number is valid return true
# 			If total is not a multiple of 10 card is invaid return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(cardnum)
    @cardarray = cardnum.to_s.chars
    @finalsum = 0
    if @cardarray.length != 16 
      raise ArgumentError.new("Not a valid credit card")
    end
  end

  def double_digit
    @cardarray.map! do |x|
      x.to_i    
    end
    @cardarray.map!.with_index do |num, index|
      index % 2 == 0 ? num * 2 : num
    end
  end
  
  def sum_digits
    double_digit
    @cardarray.map! {|x| x.to_s }
    @cardarray.map! do |x|
      if x.length == 2
        x.split(//)
      else
        x
      end
    end
  end

  def total_sum
    sum_digits
    @cardarray.flatten!.map do |x|
      x.to_i
    end 
    @cardarray.to_s.chars.each do |x| 
      @finalsum += x.to_i
    end
  end

  def final_length_check
    total_sum
    if @finalsum % 10 == 0
      true
    else
      false
    end
  end

  def check_card
    final_length_check
  end
end

card = CreditCard.new(9864736291806473)
card.check_card

# Refactored Solution
class CreditCard

  def initialize(cardnum)
    @cardarray = cardnum.to_s.chars
    @finalsum = 0
    if @cardarray.length != 16 
      raise ArgumentError.new("Not a valid credit card")
    end
  end

  def double_digit
    @cardarray.map! do |x|
      x.to_i    
    end
    @cardarray.map!.with_index do |num, index|
      index % 2 == 0 ? num * 2 : num
    end
  end
  
  def sum_digits
    double_digit
    @cardarray.map! {|x| x.to_s }
    @cardarray.map! do |x|
       x.length == 2 ? x.split(//) : x
    end
  end

  def total_sum
    sum_digits
    @cardarray.flatten!.map do |x|
      x.to_i
    end 
    @cardarray.to_s.chars.each do |x| 
      @finalsum += x.to_i
    end
  end

  def final_length_check
    total_sum
     @finalsum % 10 == 0 ? true : false
  end

  def check_card
    final_length_check
  end
end

# Reflection
# 1. What was the most difficult part of this challenge for you and your pair?
# The most difficult part was getting the first step coded in the initial solution. We were able to explain what we 
# wanted the code to accomplish but it took a lot of research and time to actually have it execute properly.

# 2. What new methods did you find to help you when you refactored?
# We used flatten! to modify  the double digits numbers separated in their sub array back to just one array.

# 3. What concepts or learnings were you able to solidify in this challenge?
# I learned how to have the methods pass to each other so when the final method is called the actions of the methods
# above cascade down.
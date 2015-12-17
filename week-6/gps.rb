# # Your Names
# # 1)
# # 2)

# # We spent [#] hours on this challenge.

# # Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   # inventory is amount of of each food takes as a hash
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
#   error_counter = 3  #defining a variable as 3

#   library.each do |food| #running  loop for each food item
#     # checking if food to make is non-exist
#     if library[food] != library[item_to_make] 
#       error_counter += -1
#     end
#   end
#   # displays argumenterror if counter gets more than zero
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   # setting serving_size equal to array with a amount it make and removing from array
#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size #leftover amount

#   case remaining_ingredients #displays how much of item is made and any ingredients left over
#   when 0 
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# REFACTOR

def serving_size_calc(item_to_make, num_of_ingredients)
  inventory = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !inventory.has_key?(item_to_make)
  
  ingredients_needed = inventory[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredients_needed

  if remaining_ingredients == 0
    return "Made #{num_of_ingredients / ingredients_needed} #{item_to_make}"
  else
    return "Made #{num_of_ingredients / ingredients_needed} #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
    # TODO FEATURE
  end
  
end
# printing the serving_size with the item and number
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 6)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

- What did you learn about making code readable by working on this challenge?
  I learned how important it really is when someone who doesn't know what you were thinking tries to look through it later. Some of the chunks of code and key words were really tough to get through since they were either named generically or were convoluted and separated in confusing ways. 

- Did you learn any new methods? What did you learn about them?
  The only one I realy learned about was the values_at method, which returns the values at whatever keys are listed in its arguments. It can accept multiple arguments and will return whatever it finds in an array. 

- What did you learn about accessing data in hashes? 
  That you can return multiple values in a hash together by using the values_at method, and then work with the array of values from there. That was pretty cool, even though we removed it since it was confusing in this case. 

- What concepts were solidified when working through this challenge?
  The main concept was readability. I thought about it pretty passively up until this point, but after realizing how annoying and time consuming it can make simply looking through code I'll work much harder at it in the future. 

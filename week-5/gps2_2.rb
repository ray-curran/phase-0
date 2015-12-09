# James: I'll type here if I have any comments/questions, please feel free to ask questions through the challenge :)




# Method to create a list
# input: container of items
# steps: 
  # create list of items with associated default quantities (0)
  # print the list to the console [can you use one of your other methods here?]
# output: container

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add item/optional quantity to the list
# 
# output: container of items

# Method to remove an item from the list
# input: item name
# steps: check whether item is on the list
# if yes, delete the item
# output: revised container w/o item

# Method to update the quantity of an item
# input: key/item name and new value
# steps: select the key
# update the value 
# output: revised container w/ new value for item

# Method to print a list and make it look pretty
# input: our list/container
# steps: make pretty while printing
# output: pretty list

# yup. you would probably need to pass in the hash to the method as well, so that it modifies that specific hash instead of overwriting each time
# We can try passing in that final list as an argument into the method like...
# You can name it however you like, but when calling the method you would pass final_list




final_list = {}

def add_edit_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
  puts "you have #{quantity} #{item}"
  return grocery_list
end

add_edit_item(final_list, "lemonade", 2)
add_edit_item(final_list, "tomatoes", 3)
add_edit_item(final_list, "onions", 1)
add_edit_item(final_list, "ice cream", 4)
puts final_list


def remove_item(grocery_list, item)
  grocery_list.delete(item)
  return grocery_list
end

remove_item(final_list,"lemonade")
puts final_list

add_edit_item(final_list, "ice cream", 1)
puts final_list

def print_list(grocery_list)
  puts "The Amazing Grocery List"
  grocery_list.each do |item, quantity|
  	puts "#{item}: #{quantity}"
  end
end

print_list(final_list)

=begin
- What did you learn about pseudocode from working on this challenge?
  I learned how important it is to write very specific pseudocode. We kind of glanced over the problems and summed them up, which made it harder to use to actually write code. 

- What are the tradeoffs of using Arrays and Hashes for this challenge?
  Using arrays would have been tough because the groceries and values wouldn't have been related, but it may have been easier to access individual quantities. 

- What does a method return?
  A method by default returns the value of the last operation performed within it. You can also force a method to return something by typing the keyword return.

- What kind of things can you pass into methods as arguments?
  You can pass in strings, numbers, default values, arrays, hashes, or most other data types. 

- How can you pass information between methods?
  To pass information between methods you need to pass something in and then return it back to the same variable. 

- What concepts were solidified in this challenge, and what concepts are still confusing?
  Mostly solidified manipulating data within hashes, but still pretty confused about how to pass hashes into a method and then have them return the value to the same variable. Going to need to practice more with that. 

=end



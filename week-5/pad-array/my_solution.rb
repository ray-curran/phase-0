# Pad an Array

# I worked on this challenge with Karen Ball

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, a minimum size (integer), and an optional placeholder value
# What are the steps needed to solve the problem?
# check length of our array
# compare length of array to minimum size integer
# IF length of array is less than minimum size
  # add placeholder value or values until length equals minimum size
  # return array
# ELSE
  #return array
# What is the output? (i.e. What should the code return?) array


=begin
# 1. Initial Solution
def pad!(array, min_size, value = nil)
  # Your code here
  while array.length < min_size
    array.push(value)
  end
  return array
end

original_array = [1,2,3]

pad!(original_array, 5, 'apple')
print original_array
=end

# 3. Refactored Solution

def pad!(array,min_size,value = nil)
		array.fill(value,array.length,(min_size - array.length))
end

# 4. Reflection
=begin
- Were you successful in breaking the problem down into small steps?
	Yes, we did a nice job in the pseudocode (and at times probably a little overboard) breaking the problem into as small steps as we could. This made it a lot easier when it came to actually doing the coding. 

- Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
	Yes, we did. The one issue we had was trying to figure out what steps would be different for a desctructive vs a non-destructive method. We didn't put that anywhere in the pseudocode since we weren't quite sure, and this ended up taking up most of our time later in the challenge. 

- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	The first solution for our destructive method was successful. It seemed too easy until we had to figure out how to make the same type of method but have it be non-destructive. Eventually we just needed to troubleshoot a bit and try new things since we weren't able to find a solid answer during research. 

- When you refactored, did you find any existing methods in Ruby to clean up your code?
	Yes, we were able to find the fill method to pad our array. 

- How readable is your solution? Did you and your pair choose descriptive variable names?
	It's pretty readable. My pair had had some experience naming variables with names that weren't as descriptive in her GPS, so she was good at making sure we were careful with our names. 

- What is the difference between destructive and non-destructive methods in your own words?
	A destructive method actually changes the inputs. So in our example, the destructive method took an array as an input and actually returned the value back to the same array. So when you try to access that same array later, you're working on the changed array. In a non-destructive method, you can perform the same actions, but it leaves the original input alone. You can save the changes to your inputs to a new variable instead. 

=end
# 0. Pseudocode

# What is the input? an array, a minimum size (integer), and an optional placeholder value
# What are the steps needed to solve the problem?
# reassign value of array to new variable
# compare length of array to minimum size integer
# WHILE length of array is less than minimum size integer
# add placeholder value(s) until length is minimum size
# What is the output? (i.e. What should the code return?) array of new variable




# 1. Initial Solution
=begin
def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array += array
  while new_array.length < min_size
    new_array.push(value)
  end
  return new_array


end

original_array = [1,2,3]

pad(original_array, 5, 'apple')
print original_array
=end

# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  new_array = [] 
  new_array += array
  new_array.fill(value,array.length,(min_size - array.length))
end












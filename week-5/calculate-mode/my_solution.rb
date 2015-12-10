# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? A container of elements
# What is the output? A container with the mode of elements
# What are the steps needed to solve the problem? 
#  Create a new empty container (hash).
#  Go through given container and if the value doesn't currently exist, move that value and the number one to the new container. If the value does exist, increase number by one. Return the key.


# 1. Initial Solution

=begin
def mode(array)
  hash = {}
  array.each do |value|
    if hash.has_key?(value)
      hash[value] += 1
    else 
      hash[value] = 1      
    end
  end
  sorted_array = hash.sort_by { |x,y| -y}
  final_array = []
  sorted_array.each do |key|
    if key[1] == sorted_array[0][1] 
      final_array << key[0]
    end
  end
  return final_array.sort!
end
=end



# 3. Refactored Solution

def mode(array)
	hash = Hash[array.map {|x| [x, array.count(x)]}]
  sorted_array = hash.sort_by { |x,y| -y}
  final_array = []
  sorted_array.each do |key|
    if key[1] == sorted_array[0][1] 
      final_array << key[0]
    end
  end
  p final_array.sort!
end


=begin

REFLECTION

- Which data structure did you and your pair decide to implement and why?
	We decided to push take the elements in an array and push them into a hash, since we'd want to have both the item and the number of times the item was in the array. Later, since the output was an array, we needed to turn it back into an array.

- Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
	We didn't do as great of a job as we could have. I think it'll be important in the future to try to break down individual steps into separate lines. That would make it much easier to follow and turn it into code. 

- What issues/successes did you run into when translating your pseudocode to code?
	We did a nice job covering the overall structure, but we could have done a more thorough job breaking down individual steps on separate lines. 

- What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	We used each, sort_by, push, map, and each. The map one was the most useful, but I needed to practice a lot with it to actually understand how it was working. It'll definitely be good to know in the future. 
	
=end




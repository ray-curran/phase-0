# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
	list_of_nums.sort!
	return list_of_nums[0]
end



=begin
first solution:
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums == []
  	return nil
  elsif list_of_nums.length == 1
  	return list_of_nums[0]
  elsif list_of_nums != 1
  	smallest = 10000000000000000000
  	list_of_nums.each do |num1|
  		if num1 < smallest
  			smallest = num1
  		end
  	end
  	return smallest
  end
end
=end

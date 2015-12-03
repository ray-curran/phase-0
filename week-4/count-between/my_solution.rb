# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
	list_of_integers.count do |x|
		x <= upper_bound && x >= lower_bound
	end
end


=begin
first solution:
def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  if list_of_integers.length == 0
  	return 0
  elsif upper_bound < lower_bound
  	return 0
  else
  	count = 0
  	list_of_integers.each do |number|
  		if number <= upper_bound && number >= lower_bound
  			count += 1
  		end
  	end
  	return count
  end
end
=end
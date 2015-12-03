# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	list_of_words.min_by do |word| 
		word.length
	end
end

=begin
def shortest_string(list_of_words)
  # Your code goes here!
  if list_of_words.length == 0
  	return nil
  else
  	shortest = "is this string long enough to always be the longest string i don't really know how to do this"
  	list_of_words.each do |string|
  		if string.length < shortest.length
  			shortest = string
  		end
  	end
  	return shortest
  end
end

=end
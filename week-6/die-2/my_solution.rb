# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent .75 hours on this challenge.

# Pseudocode

# Input: container of labels of sides
# Output: random side from container
# Steps: initialize class with container of labels
# Raise argument error if array of labels is empty
# Set up instance variable for labels
# define sides instance method
# find length of array and return it 
# define roll method
# return random side based on random number 


# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels == []
#   		raise ArgumentError.new("The list of labels cannot be empty")
#   	end
#   	@labels = labels
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels[rand(@labels.length)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError.new("The list of labels cannot be empty")
  	end
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(self.sides)]
  end
end






# Reflection
=begin

- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
	The main difference was that I needed to find a way to represent the number of sides. Since the last die class I created already had that number as an argument, I was able to just use that for both my sides method and the index for my roll method. This time, I just needed to replace the places I had put the old argument with the length.

- What does this exercise teach you about making code that is easily changeable or modifiable? 
	It made it clear that if you make it easily modifiable, you'll be able to make better transitions to newer, similar challenges. If we were working on an actual public project, we'd have a much more responsive team since we'd be able to easily modify. 

- What new methods did you learn when working on this challenge, if any?
	I didn't really learn any new ones. Since each method ended up being only about one line I didn't see much refactoring potential.

- What concepts about classes were you able to solidify in this challenge?
	The biggest one was making sure that I use instance variables within each method, and including the @ symbol before it. One of my methods was failing for about 15 minutes before I realized why. The other thing I realized when trying to find a way to refactor was that I can re-use methods that I've already written for the class within the class. It was cool to be able to use the sides method within the roll method, by using the self keyword.

=end




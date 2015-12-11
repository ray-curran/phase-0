# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent .5 hours on this challenge.

# 0. Pseudocode

# Input: New Object with certain number of sides
# Output: number of sides of given object and a random number from those sides
# Steps:
# Create new type of object
# initialize new objects with sides argument
# IF sides variable is less than 1
# 	raise an argument error
# ELSE
# 	save sides argument to an instance variable
# END
# end initialize
# create new roll method
# generate random number between 1 and number of sides
# return random number
# end roll method



# 1. Initial Solution

=begin
class Die
  def initialize(sides)
    # code goes here
    if sides < 1
    	raise ArgumentError.new("Die needs at least 1 side")
    else
    	@sides = sides
    end
  end

  def sides
    # code goes here
    	return @sides
  end

  def roll
    # code goes here
    return (rand(@sides) + 1)
  end
end
=end



# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 1
    	raise ArgumentError.new("Die needs at least 1 side")
    end
    	@sides = sides
  end

  def sides
    	return @sides
  end

  def roll
    return (rand(@sides) + 1)
  end
end


# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
	An argument error is pretty much what it sounds like. When you pass an argument to a method (in this case it was within our initialize method in our Die class), you can check to make sure it's an appropriate argument for an object that happens to be an instance of your class. In this example, since a die couldn't have a non-positive number as a number of sides, we raised one whenever the argument number was less than 1 (although a die would really need at least 4 sides I think).

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	I used the raise method, which I hadn't used before. It was pretty straightforward, but at first I didn't realize you could enter the error message yourself. This would be really useful in some of the errors I've run into at other times, so I'll make sure whenever I do raise an error I make it really obvious what needs to be changed.

What is a Ruby class?
	A ruby class is like a framework for any object that is created as part of that class. It can define default variables and methods that each object within it should accept. This makes it much easier to create many objects without having to rebuild them all from scratch. 

Why would you use a Ruby class?
	You'd use a Ruby class when you have several objects that you want to have structured the same way. This will allow you to make sure they all behave the same way, and you won't have to rebuild them all individually. When you want to make a change, you may be able to make it just once instead of to each individual object. 

What is the difference between a local variable and an instance variable?
	A local variable is only accessible within a specific method that it is created in. An instance variable can be accessed by any method within a specific object that it's created in. Any object within a class that declares an instance varible has it's own copy, and they start with the @ symbol.

Where can an instance variable be used?
	An instance variable can be used within any method that the object it belongs to has access to. So in the example above, I created the instance variable @sides, and then was able to use that instance variable within my sides and roll methods later on without declaring a separate local variable. 
=end



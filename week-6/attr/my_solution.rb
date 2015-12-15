#Attr Methods

# I worked on this challenge by myself

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: NameData method
# Output: salutation that greets me with my name
# Steps: 
# Create new object blueprint called NameData
# Allow system to read the name attribute without a separate method
# save my name to an instance variable
# Create new object blueprint called Greetings
# Save a new instance variable that creates a new object from the blueprint NameData
# Create salutation method 
# Print out string of salutation that calls instance variable and prints name in it


class NameData
  attr_reader :name
  def initialize
    @name = "Ray"
  end
end

class Greetings
  def initialize
    @my_name = NameData.new
  end

  def salutation
    p "Oh, hello #{@my_name.name}"
  end
end

greet = Greetings.new
greet.salutation



# Reflection
=begin
	Release 1
- What are these methods doing?
	The methods within the class are primarily setting instance variables and modifying those instance variables again. The initialize method sets the initial instance variables to a given set of information which are then accessed by the set of what_is methods. Later on, the change_my methods allow a user of the methods to change the instance variables by passing arguments to it. 

- How are they modifying or returning the value of instance variables?
	To modify the instance variables, the methods are using the @ sign to specify that it is an instance variable, then passing an argument to that method, then using the = sign to reassign a new value to the instance variable. To return the values, it just uses the instance variable with the @ sign to call it. 

	Release 2

- What changed between the last release and this release?
	The what_is_age code has been removed and the attr_reader line has been added to the top for the :age symbol. 

- What was replaced?
	Like I said above, the what_is_age method has been replaced with the attr_reader :age line. 

- Is this code simpler than the last?
	Yes, it makes it more clear and eliminates unnecessary methods. It's also easier to figure out what to call, since you don't need to remember more method names. 


Release 3

- What changed between the last release and this release?
	A new attr_writer lines has been added to the top of the class that adds the :age symbol. 

- What was replaced?
	The attr_reader :age line has replaced the what_is_age method. 

- Is this code simpler than the last?
	Yes. Again, it removed an unnecessary method while keeping the same functionality. 

Reflection

- What is a reader method?
	A reader method is one that prints/returns the value of a given instance variable. It replaces code that looks like his:
	def method
  	@variable
	end 

- What is a writer method?
	A writer method is one that edits the value of a given instance variable. It looks like this:
	def method= (variable)
  	@variable = variable
	end

- What do the attr methods do for you?
	The attr methods allow you to easily read or edit instance variables for objects you create in those classes. You also don't have to write separate methods to do these things, which you'd have to do manually otherwise. While you can use the attr_reader or attr_writer to do one or the other, you can also just enter attr_accessor which will allow you to write and read at the same time. 

- Should you always use an accessor to cover your bases? Why or why not?
	No, it's not always the best to use the accessor. Sometimes you want to be able to control where/when parts of your program would be able to read or edit instance variables. This can help control access. 

- What is confusing to you about these methods?
	The confusing part for me was when we layered classes within other classes. I'm interested to see how it works when we actually assign variables through arguments when initializing those objects. 

=end






















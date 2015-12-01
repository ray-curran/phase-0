puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts ""
puts "Nice to meet you, " + first + " " + middle + " " + last + "."
puts " "
puts " "

puts "What is your favorite number?"
fave_num = gets.chomp.to_i
puts "That's a good number, but what about something bigger and better, like " + (fave_num+1).to_s + "?"

=begin 
- How do you define a local variable?
	To define a local variable, you'd use the following setup:
		var_name = "This is the content of my variable"

- How do you define a method?
	To define a method, you'd use the following setup:
		def method_name(argument)
		  puts "Some text" + argument
		end

- What is the difference between a local variable and a method?
	A local variable stores information to be used later, and a method actually does something (oftentimes it can do something with the local variables).

- How do you run a ruby program from the command line?
	To run a ruby program, you'd enter "ruby name_of_program.rb" at the command line. 

- How do you run an RSpec file from the command line?
	You'd run this just like running a ruby program, except replace the ruby with rspec. 

- What was confusing about this material? What made sense?
	Most of this made sense to me, especially the arithmetic portions. It's good to see how logical those pieces are. The most confusing part to me was when I had to print strings and integers together. I had to do a little guess and check through those parts before I fixed them. 

- Define Method Solution: https://github.com/ray-curran/phase-0/blob/master/week-4/define-method/my_solution.rb
- Formatted Address solution: https://github.com/ray-curran/phase-0/blob/master/week-4/address/my_solution.rb
- Math Methods Solution: https://github.com/ray-curran/phase-0/blob/master/week-4/math/my_solution.rb

=end
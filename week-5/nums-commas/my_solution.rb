# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? number
# What are the steps needed to solve the problem? 
=begin
	Turn number into string
	IF string is 10 number of longer
		insert commas at the appropriate areas
	ELSIF string is 7 numbers or longer
		insert commas at the appropriate areas
	ELSIF string is 4 numbers or longer
		insert commas at the appropriate areas
	ELSE
	END
	send the string back
=end

# What is the output? (i.e. What should the code return?)string w/ commas in the right place


# 1. Initial Solution
=begin
def separate_comma(number)
	newnum = number.to_s
	if newnum.length == 10
		return newnum[0,1] + "," + newnum[1,4] + "," + newnum[4,7] + "," + newnum[7,10]
	elsif newnum.length == 9
		return newnum[0,3] + "," + newnum[3,6] + "," + newnum[6,9]
	elsif newnum.length == 8
		return newnum[0,2] + "," + newnum[2,5] + "," + newnum[5,8]
	elsif newnum.length == 7
		return newnum[0,1] + "," + newnum[1,4] + "," + newnum[4,7]
	elsif newnum.length == 6
		return newnum[0,3] + "," + newnum[3,6]
	elsif newnum.length == 5
		return newnum[0,2] + "," + newnum[2,5]
	elsif newnum.length == 4
		return newnum[0,1] + "," + newnum[1,4]
	else
		return newnum
	end
end

def separate_comma(number)
	newnum = number.to_s
	if newnum.length >= 7
		return newnum[-newnum.length..-7] + "," + newnum[-6..-4] + "," + newnum[-3..-1]
	elsif newnum.length >= 4
		return newnum[-newnum.length..-4] + "," + newnum[-3..-1]
	else
		return newnum
	end
end


=end



# 2. Refactored Solution



def separate_comma(number)
	newnum = number.to_s
	if newnum.length >= 7
		newnum.insert(-4,",")
		newnum.insert(-8,",")
	elsif newnum.length >= 4
		newnum.insert(-4,",")
	end
	return newnum
end

# 3. Reflection
=begin

- What was your process for breaking the problem down? What different approaches did you consider?
	My process focused on finding out the larger steps (like changing a number into a string or separating different sized numbers), and then seaprating those steps down further until i could translate in my head how that would look in code. I thought about using an if statement that focused on the actual size of the number, but since I needed to have a string at the end anyways I figured it would be easier to work with one data type the whole time. 

	One thing I wasn't sure about is whether I should be working to the test or whether I should be working to a full solution. Since I knew the tests were only looking up to a certain number, I worked towards that goal which made it easier. To make the full solution I would have needed to turn the number/string into an array and inserted commas at certain points, but didn't know much about the methods I could use to do that. 

- Was your pseudocode effective in helping you build a successful initial solution?
	Yes, it worked even thought I ended up straying a little from the way I imagined it originally. I learned a lot from pairing this week about how small the problems needed to be broken down, which made it much easier to write useful pseudocode. 

- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
	When I refactored the first time I made some smaller changes, like grouping the string sizes instead of calling them out individually to keep it DRY. I ended up playing around in irb a little to make sure I knew how the negative numbers would work to break the strings into chunks. When I researched through the ruby docs again, I ended up finding a couple I might be able to use. I thought about using something like partition, but it looked like I'd need to use a regexp to make it work the way I wanted. I didn't find anything to make it simpler overall, but did end up finding insert. This at least ended up making the method easier to read and the comma additions easier. It didn't really change the way my code worked. Overall, I have a lot of issues searching through the ruby docs. I don't really know where in the files to start searching or how exactly I should be going through them. My best bet at this point is to use a bunch in irb to see how they work when I have a question. 

- How did you initially iterate through the data structure?
	I didn't really iterate, just went through each option methodically and then broke it into chunks and added the commas. I tried to find a good way without using regular expressions, but didn't find anything great that would split the strings into arrays. 

- Do you feel your refactored solution is more readable than your initial solution? Why?
	Yes, I think it's definitely more readable since there's less to run through and less steps overall. The insert method definitely cleaned up a lot of the clutter in my previous attempts

=end

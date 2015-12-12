# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input? a container of grades
# What is the output? (i.e. What should the code return?) a string telling you the letter grade
# What are the steps needed to solve the problem?
# create new 0 number
# Go through each item in the container
# Add items in the array to a new number
# divide new number by length of container
# IF number > whatever number
# return letter grade string
# END


# 1. Initial Solution
# def get_grade(grades)
# 	added = 0
# 	grades.each do |x|
# 		added += x
# 	end
# 	average = added/(grades.length)
# 	if average >= 90
# 		return "A"
# 	elsif average >= 80
# 		return "B"
# 	elsif average >= 70
# 		return "C"
# 	elsif average >= 60
# 		return "D"
# 	else
# 		return "F"
# 	end
# end


# 3. Refactored Solution
def get_grade(grades)
  average = (grades.reduce(:+))/(grades.length)
  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else
    return "F"
  end
end

puts get_grade([95,75,66,88])


# 4. Reflection
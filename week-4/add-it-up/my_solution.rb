# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: sum
# Steps to solve the problem.
# ans = ans + array[x]

# 1. total initial solution
=begin
def total(array)
  answer = 0
  array.each do |number|
    answer += number
  end
  return answer
end

puts total([1,2,3,4,5])
=end

# 3. total refactored solution
def total(array)
  return array.inject {|sum, n| sum + n}
end

puts total([1,2,3,4,5])
# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: Sentence made up of combined strings
# Steps to solve the problem.
# Capitalize first element in array
# Add space to first/middle elements
# Add period after last element
# Add each element to the answer
# return answer



# 5. sentence_maker initial solution
=begin
def sentence_maker(array)
  ans = ""
  i = 0
  while i < array.length
    if array[i] == array.first
      ans += (array[i].capitalize + " ")
    elsif array[i] == array.last
      ans += (array[i] + ".")
    else
      ans += (array[i] + " ")
    end
    i += 1
  end
  return ans
end
=end



# 6. sentence_maker refactored solution


def sentence_maker(array)
  string = array.join(" ")
  string.capitalize!
  string += "."
end

puts sentence_maker(["I", "went", "to", "the", "zoo"])
  
  






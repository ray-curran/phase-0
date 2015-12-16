# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 2
# ============================================================
#p array[1][2][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ===========================================================
# p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |x|
  if x.kind_of?(Array)
    x.map! do |y|
      y += 5
    end
  else
    x += 5
  end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin
def name_generator(name_array)
	name_array.map! do |x|
		if x.kind_of?(Array)
			x.map! do |y|
				if y.kind_of?(Array)
					y.map! do |z|
						z += "ly"
					end
				else
					y += "ly"
				end
			end
		else
			x += "ly"
		end
	end
end
=end

#refactored

def name_generator(name_array)
	name_array.map! do |x|
		if x.kind_of?(Array)
			x.map! do |y|
				if y.kind_of?(Array) 
					y.map! { |z| z + "ly" }
				else y + "ly"
				end
			end
		else x + "ly"
		end
	end
end

p name_generator(startup_names)

#reflection
=begin

- What are some general rules you can apply to nested arrays?
	To keep them clean and make it clear how they can be accessed, arrays that are really deeply embedded are easier to read if they're on separate lines. So maybe the first division has each element on a separate line. Trying to read through them when they're all in a single line can be really tough. I also like to work from the inside out. When you know what you have to access, it's easier to see where in the innermost array you want to get, then work backwards from there. In our pairing, we usually had a harder time figuring out the innermost index since we were already getting in so deep. 

- What are some ways you can iterate over nested arrays?
	You can use typical iterators like each or while, and then within those iterators put more iterators for each level along with a conditional. So if the array you're searching through has a nested array, your iterator can treat all the elements within the inner arrays just like it would those in their own elements. 

- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
	We didn't find any great new ones, but were able to re-use map, which is great. We originally tried to put a map! method within an each statement, but didn't get our desired result since it wasn't destructure. We eventually realized that we needed to put a map! within a map! method to make sure any changes we made were made to the original structure.

=end









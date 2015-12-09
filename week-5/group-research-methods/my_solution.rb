# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
   # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   new_hash = source.sort_by { |x,y| y}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the sort_by method here in my refactored solution. The sort_by method works by taking an input (a hash or an array), and then uses the parameters to determine what to use as a sorting method. 
# In my array example, I used a variable x to stand for each item in the array (this is the part inside the || symbols). The second part, outside of the symbols, tells the method what to use to sort. When I tried to run it, I got an error because the method couldn't compare numbers and strings. When I added x.to_s (which converts each item to a string) to the code block, it was able to successfuly order the array based on the strings. While this worked here, it would need to be refactored if there were larger numbers in the array. When comparing the numbers as strings, for example, it would order like it would alphabetically (so 35 would come before 4).
# My original solution covered this by creating two separate empty arrays, pushing numbers to one and strings to another (using the is_a? method), then sorted each individually and then combined them. This would work for an overall example, but is much wordier.
# In the hash example, I did something very similar. Since a hash has both a key and a value, I need to put |x,y| within the code block. The x here represents the key and the y represents the values. Since I wanted to order by the age (the values), I had it sort by the y. 


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
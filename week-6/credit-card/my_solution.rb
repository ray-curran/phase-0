# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true or false
# Steps: break the 16 digits into individual numbers
# store individual numbers in container
# Iterate through all numbers in container
# IF it is an odd item in the container
  # multiply number by 2
# ELSE leave number alone
# END
# Iterate through all numbers in container
# IF the number is 10 or greater
  # Break it into individual numbers
# ELSE leave the number alone
# END
# Add all the numbers together
# Divide the sum by 10
# IF there's no remainder 
  # return true
# ELSE false
#end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your card number is 16 digits!") if @number.to_s.length != 16
  end
  
  def check_card
    individual= @number.to_s.split("")
    individual.map! { |number|
      if individual.index(number)%2 == 0
        number.to_i * 2
      else
        number.to_i
      end
      }
     individual.map! { |number|
      if number > 9
        number.to_s.split("")
      else number = number
      end
      }
    individual.flatten!
    individual.map! { |number|
      number = number.to_i
      }
    sum = individual.inject{|sum,x| sum + x }
    if sum %10 == 0
      return true
    else 
      return false
    end
    
  end

end
=end


# Refactored Solution

=begin
Explained refactored solution:

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your card number is 16 digits!") if @number.to_s.length != 16
  end
  
  def check_card
        #changes number to a string, breaks it up by character, returns array of numerical strings (like "2")
    individual= @number.to_s.split("")
        # for each numerical string, if it has an even index, it converts to an integer,
        # multiplies by 2, changes it back to a string, then breaks it up by characters again,
        # returns an array of numerical strings and some arrays of numerical 
        # strings (e.g. ["1","2"["1","2"]])
        # if it has an odd index, it leaves it alone
    individual.map! { |number|
    individual.index(number)%2 == 0 ? (number.to_i * 2).to_s.split("") : number
    }
        # removes inner arrays and creates one large array of all numerical strings,
        # then turns all numberical strings to integers
    individual.flatten!.map! { |number| number = number.to_i }
        # checks whether sum of all numbers in array is divisible by 10, returns true/false
    individual.inject{|sum,x| sum + x } %10 == 0
  end
end
=end

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Your card number is 16 digits!") if @number.to_s.length != 16
  end
  
  def check_card
    individual= @number.to_s.split("")
    individual.map! { |number|
    individual.index(number)%2 == 0 ? (number.to_i * 2).to_s.split("") : number
    }
    individual.flatten!.map! { |number| number = number.to_i }
    individual.inject{|sum,x| sum + x } %10 == 0
  end
end


# Reflection

=begin

- What was the most difficult part of this challenge for you and your pair?
  I think the most difficult part was actually refactoring. We ran into some complicated stuff when we were trying to split the original number up, and used some new methods even in the original solution. When it came to refactoring, we really had to think about what we could eliminate or make better in our final solution. Eventually we found a solution that was a little simpler or at least easier to read/access. 

- What new methods did you find to help you when you refactored?
  Ones that were pretty new to me were inject and flatten. Flatten just turns nested arrays into one big array. This one was pretty important for our solution here. The other one, inject, combines all elements in an enumerable based on a code block. In this case, we wanted to add all the numbers in our array, so we added an addition code block. 

- What concepts or learnings were you able to solidify in this challenge?
  A big one for me was how important pseudocode can be, and how specific it needs to be. We kind of ran right through it and didn't think about it, but afterwards I went through and commented what each step was doing. As I was doing this, I realized that's kind of what pseudocode should be. They were just logical steps that used basic coding concepts. If we had done that earlier and gotten more specific (like actually saying that we were going to create a container or iterate through), we could have used that to more quickly find our solution. 

  Other more specific concepts I worked on a little were creating one liners for some code (like raising the argument error in the initialize method), using the ternary operator (? :), and chaining methods together so the code doesn't look as broken up and confusing. 

=end







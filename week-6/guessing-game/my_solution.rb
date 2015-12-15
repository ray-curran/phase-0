# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an answer for the game
# Output: high, low, or correct depending on what the guess is
# Steps: initialize new guessing game with an answer
# set up an instance variable from the answer given 
# Set up guess method with a guess input
# IF guess is equal to the answer return correct
# ELSIF guess is larger than the answer return that it's too high
# ELSE return that it's too low
# END
# setup a solved method 
# IF the last guess was correct, return true
# ELSE return false
# END


# Initial Solution
=begin

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = {solved?: false}
  end

  def guess(guess)
    if @answer == guess
      @solved[:solved?] = true
      p :correct
    elsif guess >= @answer
      @solved[:solved?] = false
      p :high
    else
      @solved[:solved?] = false
      p :low
    end
  end

  def solved?
    if @solved[:solved?]
      p true
    else
      p false
    end
  end

end
=end





# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if @answer == guess
      @solved = true
      :correct
    elsif guess >= @answer
      @solved = false
      :high
    else
      @solved = false
      :low
    end
  end

  def solved?
    @solved
  end
end




# Reflection

=begin
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	Instance varables represent a single characteristic about an object. It will stay with that object unless it's specifically changed, regardless of what action (or method) they are performing. So it could be like a person's hat. Whether that person is making coffee or watching tv, he'd keep wearing the hat until he took it off or put on another one. Methods are like actions that an object in the real world can perform. So a car object may have a method to start or rev the engine. 

- When should you use instance variables? What do they do for you?
	You should use instance variables when you want to be able to access/change that attribute of an object in that class at any point or within any method. They can be defined anywhere in the class, which was much harder for me to understand than I thought based on this challenge. Originally I kept trying to define all instance variables within the initialization method, but that caused unnecessary steps. 

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	Using flow control, you need to set specific conditional using keywords (e.g. if, elsif, else) to say what branch of the statement to go to. In this example, I needed to find the relationship between the guess and answer and then use that relationship to say what to return for that method. I didn't really have any specific trouble, except using it when I didn't need to in the solved? method. 

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	I assume we used this mostly based on improved performance. Symbols take up much less space and also don't reference anything else. Otherwise I would have just used a string, which takes more space and also creates a new object each time it's returned/created. Since we returned symbols, it just references the same object over and over. This would also be a lot easier if we had more to do with this program since we're working with a single object. 


=end









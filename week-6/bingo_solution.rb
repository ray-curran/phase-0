# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # create container with all the letters in it
  # select random number 0-4
  # use that number to pick which element in the container should be selected
  # select a number 1-100

# Check the called column for the number called.
  #fill in the outline here
  # IF letter is B, I, N, G, or O
    # check all the lines in the board in the first position
  # END
  # set instance variable to say what the match is

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # replace element in the position specified above with an x absed on instance variable

# Display a column to the console
  #fill in the outline here
  # display whatever element in the bingo board is the last letter selected
  #i didn't end up using this, not sure if i needed to...

# Display the board to the console (prettily)
  #fill in the outline here
  #display entire bingo board with lines in between

# Initial Solution
=begin

class BingoBoard

  attr_reader :last_call
  
  def initialize(board)
    @bingo_board = board
    @bingo_letters = ["b","i","n","g","o"]
    @last_call = Array.new
  end
  
  def call
    @last_call[0] = @bingo_letters[rand(5)]
    @last_call[1] = rand(100) + 1
  end
  
  def check
    @bingo_board.each do |x|
      if x[@bingo_letters.index(@last_call[0])] == @last_call[1]
        x[@bingo_letters.index(@last_call[0])] = "x"
      end
    end
  end

  def display_board
    @bingo_board.each { |x| print x, "\n"}
  end
end
=end

# Refactored Solution

class BingoBoard
  
  def initialize(board)
    @bingo_board = board
    @bingo_letters = ["B","I","N","G","O"]
  end
  
  def call
    @last_call = [(@bingo_letters[rand(5)]),(rand(100) + 1)]
    p @last_call.join
  end
  
  def check
    @bingo_board.each do |x|
      x[@bingo_letters.index(@last_call[0])] == @last_call[1] ? x[@bingo_letters.index(@last_call[0])] = "X" : ""
    end
    @bingo_board.each { |x| print x, "\n"}
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call

new_game.check

new_game.call

new_game.check

new_game.call

new_game.check

new_game.call

new_game.check

new_game.call

new_game.check

new_game.call

new_game.check


def create_board
  board = Array.new(5) {[1,1]}
  final_board = Array.new(5) {[1,1]}
  
  
  board.each do |x|
    while x != x.uniq
      index = board.index(x).to_int
      x.replace(x.uniq)
      x.fill(0, 5) {|x| (rand(15)+1) + (15 * (index))}
    end
    x.each {|y|
      final_board[x.index(y)][board.index(x)] =  board[board.index(x)][x.index(y)]
      }
  end

  final_board.each {|x| print x, "\n"}
end

create_board

#Reflection
=begin

- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
	Pseudocoding was hard for this challenge for me, since I didn't really know how to define input/output for each step. Generally, I think my style is to focus on input/output for each method. Since the pseodocode framework was already laid out here, I was originally thinking that each grouping was a separate method. When I went into the actual coding portion, I needed to do some mental and code rearranging, which made my pseudocode less useful this time. 

- What are the benefits of using a class for this challenge?
	The benefit of using a class here is that we could create multiple bingo games that all had different outputs. Each time we wanted to create a new bingo game, we'd already be able to use the call and check methods on it. If we didn't use a class, we'd need to rewrite the code within each object or create a method that completed each action.

- How can you access coordinates in a nested array?
	To access coordinates in a nested array, you first use the index of the overall array and then the index of the inner array. So if you wanted the first element in the second array within array = [[1,2,3],[4,5,6]] you'd write something like array[1][0]. This would return 4. 

- What methods did you use to access and modify the array?
	I used join, index, =, and each. The only one that truly modified the array itself was when I used the = method to put the X in place of the elements that matched the call after I checked them. I used index to find the index of certain items within arrays and each to iterate through them. I used join mostly for appearance purposes, since I wanted my calls to appear in a more bingo-friendly format (like B16 instead of [B,16]).

- Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
	I didn't really learn new methods refactoring my call or check method, but learned more when I went through the creating a legal bingo board. This really tested my limits. The ones I learned the most about were uniq and replace, which I had read about before but not really used. The uniq method acts on an array and returns only unique values, and easily removes duplicates. To call it, you just type array.uniq. This would give you only the unique elements in an array. Replace does pretty much what you expect, and replaces the contents of your array with another array. You'd call it like this: array.replace([1,2,3]). Youre array would now contain [1,2,3].

- How did you determine what should be an instance variable versus a local variable?
	If I needed to use a variable in more than one method within the class, I made it an instance variable so I didn't have to worry about passing it in and out of each method. If I just needed the variable during an iteration or something quick within a method, I used a local variable.

- What do you feel is most improved in your refactored solution?
	The main thing I improved was eliminating unnecessary lines. I had done some steps that just didn't need to be there, like an extra method (display_board, which came mostly from my bum pseudocode), establishing an instance variable on an extra line, and breaking an array definition onto multiple lines. 

=end




















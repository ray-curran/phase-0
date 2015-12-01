# Analyze the Errors

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
  # end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#   errors.rb
# 2. What is the line number where the error occurs?
#   171
# 3. What is the type of error message?
#  	syntax error
# 4. What additional information does the interpreter provide about this type of error?
#   It says it's expecting a keyword of end, but instead gets the end of the input
# 5. Where is the error in the code?
#   It is at the very end of the ruby file after the last comment
# 6. Why did the interpreter give you this error?
#   There is an end missing after the while, so ruby is still waiting for one at the end of the file. 

# --- error -------------------------------------------------------

# south_park 

# 1. What is the line number where the error occurs?
#   37
# 2. What is the type of error message?
#   undefined local variable or method 
# 3. What additional information does the interpreter provide about this type of error?
#   it tells you that it's in <main>
# 4. Where is the error in the code?
#   this one doesn't specifically point it out, but does say it's in <main>
# 5. Why did the interpreter give you this error?
#   we're calling a variable/method that doesn't already exist, so ruby doesn't know what to do with it

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#   52
# 2. What is the type of error message?
#   undefined method
# 3. What additional information does the interpreter provide about this type of error?
#   it tells you that it's in main:Object (NoMethodError)
# 4. Where is the error in the code?
#   It doesn't point it out here, but it's on line 52
# 5. Why did the interpreter give you this error?
#   Similar the above, we're calling a method that doesn't exist. we're created the method cartmans_phrase but not cartman

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   67
# 2. What is the type of error message?
#   wrong numbers of arguments 
# 3. What additional information does the interpreter provide about this type of error?
#   It says it's an argument error based on the call in line 71
# 4. Where is the error in the code?
#   It's in line 71
# 5. Why did the interpreter give you this error?
#   We're created a method that doesn't take any arguments, and then called it with an argument. ruby doesn't know what to do with that extra argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#   86
# 2. What is the type of error message?
#   wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
#   it tells us that it's from the method being called in line 90
# 4. Where is the error in the code?
#   line 90
# 5. Why did the interpreter give you this error?
#   This time, we created a method that requires an argument but then didn't provide one. ruby has no offensive_message to puts to the console



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   107
# 2. What is the type of error message?
#   wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
#   it tells us that the error is happening because of the number of arguments when calling the method on line 111
# 4. Where is the error in the code?
#   line 111
# 5. Why did the interpreter give you this error?
#   similar to the two examples above, except this time we're giving the method one argument when it requires two. 

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#   126
# 2. What is the type of error message?
#   string can't be converted to fixnum
# 3. What additional information does the interpreter provide about this type of error?
#   that it's a type error
# 4. Where is the error in the code?
#   it's based on the multiplication
# 5. Why did the interpreter give you this error?
#   when multiplying a string and a number, the number needs to come second. In this case, ruby is trying to multiply 5 "respect my authoritay" times, which doesn't work. We'd need to reverse the inputs. 

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#   141
# 2. What is the type of error message?
#   divided by 0
# 3. What additional information does the interpreter provide about this type of error?
#   that it's a zerodivisionerror
# 4. Where is the error in the code?
#   it's in the arithmetic part of the line
# 5. Why did the interpreter give you this error?
#   The system can't divide by 0 because those are the math laws. :)

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   157
# 2. What is the type of error message?
#   cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#   it tells you where the file they're trying to find would live
# 4. Where is the error in the code?
#   on line 157 where the system is giving the name of a non-existent file
# 5. Why did the interpreter give you this error?
#   the require_relative is telling ruby to find a file that doesn't exist, at least not at the path that we've given it. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

- Which error was the most difficult to read?
  The most difficult for me was the second syntax error where it said the line the error was on was way in the 100s, after the rest of the file was done. The only reason I knew what to do with it was because I watched the optional errors video earlier in this week's module.

- How did you figure out what the issue with the error was?
  Like I said above, since I had watched the video, I was able to watch out for that one specifically. Whoever was in the video said to just look for where an "end" was missing. 

- Were you able to determine why each error message happened based on the code? 
  Yes, after some analysis. I tried to correct them where I could, rather than just commenting them out. 

- When you encounter errors in your future code, what process will you follow to help you debug?
  I think the fact that ruby will just run through them until it hits an error is really nice, I'll probably just try to work through the individually. The pomodoro technique will be important here, since I imagine it'll be easy to get brain fried. 

=end
	

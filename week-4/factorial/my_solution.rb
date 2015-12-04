def factorial(number)
  if number == 0
  	return 1
  else
  	ans = number
  	while number > 1
    	ans = ans * (number - 1)
    	number -= 1
  	end
  end
  return ans
end


puts factorial(5)
=begin

Input number(5)
answer = number
WHILE number > 1
  ans = multiply n * n-1
  decrease number by 1
END 

5
answer = 5
while 5 >1
  ans = ans*4
  number = 4
while 4 >1
answer = 20*3
number = 3
while 3 >1
answer = 60*2
number = 2
while 2 >1
answer = 120 * 1
number = 1
break the loop!


Output factorial of number (120)

=end


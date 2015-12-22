// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// Input: Number
// Output: string (number with commas)
// Steps: 
// convert number to a string
// IF length of string < 4
//   return string
// ELSE 
//   create for loop, start i at length of string, end when i = 0, go down by 3 each time
// take substring of last 3 characters
// insert comma
//   END
// END
// return string of numbers
    
  

// // Initial Solution
var separateComma = function(number) {
  var string = number.toString();
  
  if (string.length < 4)
    return string;
  else {
    var newString = "";
    for (var i = string.length; i > 0; i -= 3) {
      if (i > 3)
        newString = "," + string.substring(i-3, i) + newString;
      else
        newString = string.substring(0, i) + newString;
    };
    return newString;
  };
};



// Refactored Solution
// removed first if statement 
var separateComma = function(number) {
  var string = number.toString();
  var newString = "";
  for (var i = string.length; i > 0; i -= 3) {
    if (i > 3)
      newString = "," + string.substring(i-3, i) + newString;
    else
      newString = string.substring(0, i) + newString;
  };
  return newString;
};



// Your Own Tests (OPTIONAL)
console.log(separateComma(223));
console.log(separateComma(1223));
console.log(separateComma(12384007223));


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(12338007223) === "12,338,007,223"),
  "The return value should be 12,338,007,223",
  "1. "
)

assert(
  typeof separateComma(12223) === 'string',
  "The return value should be a string",
  "2. "
)

assert(
  (separateComma(100) === "100"),
  "The return value should be 100",
  "3. "
)
/*
Reflection

- What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	It was pretty interesting, since neither of us wanted to do it exactly how we did it in Ruby. This was also a
	 little hard. We talked about what each of us had done when we did the challenge in Ruby, and then did some 
	 brainstorming about what javascript we could use to do something different. 

- What did you learn about iterating over arrays in JavaScript?
	I think it's very similar to iterating in Ruby. The syntax is definitely different, but as long as you understand
	the logic of where you want to stop and start, it's pretty straightforward.

- What was different about solving this problem in JavaScript?
	The main part that was different was that we didn't really understand the JavaScript built-in methods as well as we
	 did with Ruby. Even when we were trying to convert it to a string we needed to do a little checking to make sure 
	 we knew what we were doing. 

- What built-in methods did you find to incorporate in your refactored solution?
	We didn't really find any that would have made a significant difference to our solution. The one that we did some
	looking into was slice, but that would have done something similar to our substring and not made a big difference
	in the final refactored solution. Instead we looked at streamlining and taking out unnecessary components.





*/



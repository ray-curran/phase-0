// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var coffee = "bold"
console.log("This coffee is so " + coffee + ".")

// Program that asks for favorite food

// prompt("What's your favorite food?");
// alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// looping a triangle

var result = "#"
for (i = 1; i < 8; i++) {
  console.log(result);
  result += "#";
   }

// fizzbuzz

for (i = 1; i <=100; i++) {
	if (i%5 == 0 && i%3 == 0)
		console.log("FizzBuzz")
	else if (i%3 == 0)
		console.log("Fizz")
	else if (i%5 == 0)
		console.log("Buzz")
	else
		console.log(i)
}

// chess board
// var each_line = "# # # #";
// var line_number = 8;
// for (i=1; i <= line_number; i++) {
// 	var each_line = "# # # #"
// 	if (i%2 != 0) {
// 		each_line = " " + each_line }
// 	console.log(each_line);
// 	};

// var line_number = 8
// for (i = 1; i <= line_number; i++) {
// 	if (i%2 != 0) {
// 		var each_line = " "
// 	}
// 	else {
// 		var each_line = ""
// 	}
// 	for (j = 1; j <= line_number; j++) {
// 		each_line += "# "
// 	}
// 	console.log(each_line);
// }

var line_number = 12
var full_string = " "
for (i=1; i <= (line_number * line_number); i ++) {
	if (i%(line_number *2) == 0)
		full_string += "#\n "
	else if (i%line_number == 0)
		full_string += "#\n";
	else if (i%2)
		full_string += " ";
	else
		full_string += "#";
}
console.log(full_string);



// Functions

// Complete the `minimum` exercise.

function min(one, two) {
	if (one > two) 
		return two;
	else if (two > one)
		return one;
	else
		return "they're the same!";
};

console.log(min(3,4));
console.log(min(4,10398));
console.log(min(4,4));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Ray",
  age: 27,
  favorite_foods: ["tacos","pizza","paneer"],
  quirk: "play with my left ear when I'm nervous or thinking hard",
};

console.log(me);










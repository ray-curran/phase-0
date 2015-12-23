 // rc coderpad


 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up



// Bulk Up

//Solution 1

// function athlete(name,event){
//     this.name = name;
//     this.event = event;
// };

// var michael = new athlete("Michael","motocross");
// var jessica = new athlete("Jessica","pentathlon");

// athlete.prototype.win = function() {
// 	console.log(this.name + " won the " + this.event);
// };


// michael.win();

//Solution 2

// var michael = { 
//   name: "Michael",
//   event: "motocross"
// };

// var jessica = {
//   name: "Jessica",
//   event: "pentathlon",
// };

// var athlete_list = [michael, jessica];

// function athlete_win(list) {
//   list.forEach(function(athlete) {
//     athlete.win = console.log(athlete.name + " won the " + athlete.event);
//   });
// }

// athlete_win(athlete_list);

// michael.win;

// Final Solution:

var athlete_list = [ {name: "Michael", event: "motocross"}, {name: "Jessica", event: "pentathlon",}, ];
  

var athlete_description = function(athlete_list) {
  athlete_list.forEach(function(i) {
    i.win = function() {
      console.log(i.name + " won the " + i.event);
    }
  })
};

// athlete_list[0].win();

athlete_description(athlete_list);

athlete_list[1].win();
athlete_list[0].win();


// Jumble your words

function jumble(string) {
  return string.split("").reverse().join("");
}

console.log(jumble("This is a string"));

// 2,4,6,8

function getEvens(nums) {
  return nums.filter(function(x) { return x % 2 === 0; });
}

console.log(getEvens([8,5,3,6,3,2,5,8]));

// "We built this city"

function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/*
- What JavaScript knowledge did you solidify in this challenge?
	One of the main things I learned was how important it is to get some small pieces of syntax important when
	coding in JavaScript versus Ruby. It seems like Ruby, although less flexible in what you can type, can
	also make it easier by eliminating keywords like var or needing to use () in each method call. We ran into issues
	a few times where only those items were missing, or we weren't sure where they were/weren't needed. 

- What are constructor functions?
	Constructor versions are kind of like classes in Ruby. They create a framework for an object and can even create
	instance variables from it just like a class. 

- How are constructors different from Ruby classes (in your research)?
	The general syntax is different. The constructor starts with a function, and instead of the instance variables 
	starting with an @ symbol like they do in Ruby, they have a this. in front of each one. When you create a new one, 
	the syntax is a little different too. One other difference is that when you want to add something into the 
	constructor later on, you need to use the prototype method to push it back into all the objects built from 
	that constructor. 

*/
















// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Race against Paul Walker as Vin Diesel. You can either drive normally and hope that 
// your car randomly goes fast, otherwise you can risk using nitrous. Ideally, the more your use nitrous
// the more risky it is. Eventually your car could explode. Not sure if i'll get to that this time. 
// Goals: Win the race without blowing your car up or stalling
// Characters: Vin Diesel (player), Paul Walker
// Objects: Vin Diesel, Paul Walker
// Functions: drive, nitrous

// Pseudocode
// Create Paul Walker object
// Establish property of paul walker so his original distance is set at 0
// Create Vin Diesel object
// Establish property so his original distance is set at 0
// potentially set up in initial risk of nitrous explosion as a decimal lower than 1 (potentially .5 ish)
// create drive function 
// 		pick random number between 1-10 to add to player's distance
//    pick random number between 1-10 to add to paul walker's distance
//    IF either distance is greater than 50, they win the race, game ends, tell player
//    ELSE IF player distance equal to paul walker, it's a tight race!
//    ELSE IF player distance greater than paul, print difference and say "keep it up!"
//    ELSE IF player distance less than paul, print difference and say "hurry up"
//    END drive
// create nitrous function
//    pick random number between 1-10 to add to paul walker's distance
//    IF random number (between 0-1) is lower than nitrous risk established earlier for player, blow up car, lose
//    ELSE IF random number is higher than nitrous risk, pick random number 5-15 to add to player's distance
//         also add .2 or something to the player's nitrous risk, so it's more risky to use it again
//					do same checks as drive function to see if game is over (potentially make this private function)
//    END nitrous function
// potentially create an invoke_rock function that is like a hail mary, would automatically make player get to 
//       the finish line, but very risky. If lost, Dwayne Johnson can smite player. 

// Initial Code

var paul_walker = {
  distance: 0,
};

var vin_diesel = {
  distance: 0,
  nitrous_risk: .3,
};

var game_over = function() {
  if (vin_diesel.distance >= 50) {
    console.log("Congratulations! You've won the race and the pink slip to Paul Walker's Hellcat!");
  } else if (paul_walker.distance >= 50) {
    console.log("Uh oh... Paul won the race and he now gets to take your Spyder. You thought you were friends, but he's leaving you in the dust.");
  } else if (paul_walker.distance == vin_diesel.distance) {
    console.log("It's neck and neck! Get moving!");
  } else if (vin_diesel.distance > paul_walker.distance) {
    console.log("You're in the lead, but Paul is only " + (vin_diesel.distance - paul_walker.distance) + " behind you!");
  } else {
    console.log("Paul is in the lead, but you can still catch him! He's only " + (paul_walker.distance - vin_diesel.distance) + " ahead of you!");
  }
};

var drive = function() {
  vin_diesel.distance += Math.floor(Math.random() * 10 + 1);
  paul_walker.distance += Math.floor(Math.random() * 10 + 1);
  game_over();
};

var nitrous = function() {
  paul_walker.distance += Math.floor(Math.random() * 10 + 1);
  if (Math.random() > vin_diesel.nitrous_risk) {
    vin_diesel.distance += Math.floor(Math.random() * 10 + 6);
    vin_diesel.nitrous_risk += .2;
    game_over();
  } else {
    console.log("Oh no, your nitrous tank was unstable. You blew sky high, and Paul Walker beat you. Sorry, bruh.");
    paul_walker.distance += 50;
  }
};




// Refactored Code

var paul_walker = {
  distance: 0,
};

var vin_diesel = {
  distance: 0,
  nitrous_risk: .3,
};

var game_over = function() {
  if (vin_diesel.distance >= 50) { console.log("Congratulations! You've won the race and the pink slip to Paul Walker's Hellcat!");} 
  else if (paul_walker.distance >= 50) { console.log("Uh oh... Paul won the race and he now gets to take your Spyder. You thought you were friends, but he's leaving you in the dust."); } 
  else if (paul_walker.distance == vin_diesel.distance) { console.log("It's neck and neck! Get moving!"); } 
  else if (vin_diesel.distance > paul_walker.distance) { console.log("You're in the lead, but Paul is only " + (vin_diesel.distance - paul_walker.distance) + " behind you!"); } 
  else { console.log("Paul is in the lead, but you can still catch him! He's only " + (paul_walker.distance - vin_diesel.distance) + " ahead of you!");}
};

var drive = function() {
  vin_diesel.distance += Math.floor(Math.random() * 10 + 1);
  paul_walker.distance += Math.floor(Math.random() * 10 + 1);
  game_over();
};

var nitrous = function() {
  paul_walker.distance += Math.floor(Math.random() * 10 + 1);
  if (Math.random() > vin_diesel.nitrous_risk) {
    vin_diesel.distance += Math.floor(Math.random() * 10 + 6);
    vin_diesel.nitrous_risk += .2;
    game_over();
  } else {
    console.log("Oh no, your nitrous tank was unstable. You blew sky high, and Paul Walker beat you. Sorry, bruh.");
    paul_walker.distance += 50;
  }
};

var play = function() {
  while (vin_diesel.distance < 50 && paul_walker.distance < 50) {
    var move = prompt("What do you want to do, 'drive' or 'use nitrous'?");
    if (move == "drive") { drive(); } else if (move == "use nitrous") { nitrous(); } 
    else { console.log("Pick either 'drive' or 'use nitrous'.") };
};
};

play();




// Reflection

/*
- What was the most difficult part of this challenge?
	The hardest part for me was just finding an idea and getting moving. I definitely over-thought this part
	for a long time. Instead of just picking something and going with it, I kept getting intimidated and
	thinking my idea wasn't good enough. Once I eventually just dove in my idea developed as I went, which
	was cool to see. 

	I'm going to keep working on this to see if I can manipulate things on the DOM later on, but am still a little
	weary of how much time I'll probably sink into that. 

- What did you learn about creating objects and functions that interact with one another?
	It's cool to see how you can just edit different objects using different methods. I didn't really think about
	things in these terms before this challenge. 

- Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	I didn't really find anything that good that I could plug in at this point. I just tried to clean up my 
	overall solution to make it a little cleaner to look at and add a prompt function so it is actually playable
	rather than just working in the terminal. 

- How can you access and manipulate properties of objects?
	You can access and manipulate properties using either the dot notation or the bracket notation. This can 
	either edit properties that already exist or add new ones. 

*/

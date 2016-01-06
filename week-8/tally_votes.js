//rc coder

// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Create FOR-IN loop of votes
Inside of first loop create second loop for each voter
PUSH each individual vote into the voteCount object.
If name is already present in voteCount object, add 1 to its tally
If not, add new object with a tally of 1.
Define Function that takes position for the winner of an office, and the voteCount variable.
Compare in voteCount for the highest tally, and assign highest tally to respective positions in officers variable.

*/
// __________________________________________
// Initial Solution

// for (var key in votes) {
//   for (var position in votes[key]) {
//     if (voteCount[position][votes[key][position]] == undefined) {
//       voteCount[position][votes[key][position]] = 1;
//     } else {
//     voteCount[position][votes[key][position]] += 1; 
//     };
//  }  
// }



// // for (var key in voteCount) {
// //   console.log(voteCount[key]);
// //   voteCount[key].sort(function(a, b){return a-b});
// //   console.log(voteCount[key]);
// // }

// for (var key in voteCount) {
//   var highest = 0;
//   var winner = {}
//   for (var name in voteCount[key]) {
//     if (voteCount[key][name] > highest) {
//       highest = voteCount[key][name];
//       officers[key] = name;
//     };
//   }
//   console.log(officers);
// };

// __________________________________________
// Refactored Solution
for (var voter in votes) {
  for (var position in votes[voter]) {
    if (voteCount[position][votes[voter][position]] == undefined) {
      voteCount[position][votes[voter][position]] = 1;
    } 
    else {
      voteCount[position][votes[voter][position]] += 1; 
    };
  }  
}

for (var position in voteCount) {
  var highest = 0;
  for (var name in voteCount[position]) {
    if (voteCount[position][name] > highest) {
      highest = voteCount[position][name];
      officers[position] = name;
    };
  };
};

// __________________________________________
// Reflection
/* 

- What did you learn about iterating over nested objects in JavaScript?
  I learned how difficult it can be to keep keys straight when you're creating loops within loops. We got pretty
  confused about which items we were actually calling at certain points. Eventually we realized we had the data 
  we wanted already, and just weren't calling it. 

- Were you able to find useful methods to help you with this?
  We didn't really use anything crazy other than the for...in loops, which were new to us. Especially creating 
  one inside another, it was pretty tough. We tried to use the sort methods for a while, but weren't able to 
  figure that out. 

- What concepts were solidified in the process of working through this challenge?
  I feel a lot more comfortable with the for..in loops now. 


*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
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
// Loop through the votes
//    FOR each student IN class
//      FOR each position they voted for
//        IF person they voted for is in votecount, increase count by 1
//        ELSE add person they voted for to votecount with count of 1
// Store votes in voteCount
// Determine which student has most votes for each position
// - create a function that accepts the object with the names and their
//   number of votes as an argument.
// - set a counter variable equal to 0
// - and an empty string variable that will hold the name of the winner
// - IF the number of votes is greater than the counter
//      counter equals to number of votes
//      winner = the name of the person
// - ELSE, keep counter and winner the same

// Store winners as officers



// __________________________________________
// Initial Solution

// for ( var student in votes ) {

//   for (var position in votes[student]){
//     if (voteCount[position].hasOwnProperty(votes[student][position])) {
//       voteCount[position][votes[student][position]] += 1;
//     } else {
//       voteCount[position][votes[student][position]] = 1;
//     }
//   }
// };

// function winner(candidates) {
//   var counter = 0;
//   var winner = "";
//     for ( var name in candidates ) {
//       if (candidates[name] > counter) {
//         counter = candidates[name];
//         winner = name;
//       }
//     }
//   return winner;
// }

// for (var position in voteCount) {
//   officers[position] = winner(voteCount[position]);
// }

// console.log(officers);

// __________________________________________
// Refactored Solution

for (var student in votes) {
  for (var position in votes[student]){
    var votedPerson = votes[student][position];
    var countedPeople = voteCount[position];

    if (countedPeople.hasOwnProperty(votedPerson)) {
      countedPeople[votedPerson] += 1;
    } else {
      countedPeople[votedPerson] = 1;
    }
  }
}


function theWinnerIs(candidates) {
  var counter = 0;
  var winner;
    for (var name in candidates) {
      if (candidates[name] > counter) {
        counter = candidates[name];
        winner = name;
      }
    }
  return winner;
}

for (var position in voteCount) {
  officers[position] = theWinnerIs(voteCount[position]);
}

console.log(officers);

// __________________________________________
/* Reflection
//-------------------------------------------
// What did you learn about iterating over nested objects in JavaScript?
--We relied heavily on for/in loops. Unlike using for/in loops with arrays, when using them with objects the loop actually iterates over the data nicely. We were also able to use clear variable names to make the code easier to read through.


// Were you able to find useful methods to help you with this?
--We used #hasOwnProperty to make sure a property didn't already exist in our object before adding it.


// What concepts were solidified in the process of working through this challenge?
--Going through this challenge I finally felt more comfortable with how JS objects work, and I had no issue with the nested looping because we went through it slowly and made sure to keep track of exactly what data we were inputting and outputting at each step.




*/ __________________________________________
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
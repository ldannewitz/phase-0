/*
Gradebook from Names and Scores

I worked on this challenge [with: Lisa Dannewitz, David Ramirez]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.
// var gradebook = {
//   Joseph: {testScores: scores[0]},
//   Susan: {testScores: scores[1]},
//   William: {testScores: scores[2]},
//   Elizabeth: {testScores: scores[3]},
//   addScore: function(name,score) {
//     this[name]["testScores"].push(score);
//   },
//   getAverage: function(name){
//     return average(this[name]["testScores"]);
//   },
// };

// function average(array){
//     var sum = array.reduce(function(a,b){return a+b});
//     var length = array.length;
//     var avg = sum / length;
//     return avg;
// };


// __________________________________________
// Refactored Solution

var gradebook = {};
// add data from var students and var scores into gradebook
for (var name in students){
    gradebook[students[name]] ={testScores: scores[name]};
}

gradebook.addScore = function(name,score) {
    this[name]["testScores"].push(score);
};
gradebook.getAverage = function(name){
    return average(this[name]["testScores"]);
};

function average(array){
    return array.reduce(function(a,b){return a+b})/array.length
};


// __________________________________________
/* Reflect
1. What did you learn about adding functions to objects?
--Line 55: We didn't have any trouble adding functions to objects in our initial solution, but when we refactored we altered the syntax and learned that you have to use dot notation, not bracket notation, to add a function to an object in this way.

2. How did you iterate over nested arrays in JavaScript?
--Although 'scores' is a nested array, for this challenge we actually wanted to keep all of the inner data together so we only had to iterate over the outer array. We got hung up on Line 51 when refactoring the 'gradebook' object input into a for/in loop. I had used a for/in loop before but with an object, not an array. It took us awhile to figure out that with an array the for/in loops iterates through the index numbers (0-3), not the actual array content. That's why on Line 52 we have to use 'students[name]' instead of just 'name'.

3. Were there any new methods you were able to incorporate? If so, what were they and how did they work?
--We used #push and #reduce, which were both similar to those methods in Ruby. We struggled slightly with the syntax of the #reduce method. Once we got the hang of it though it was easy to see how it'd be useful in other situations.







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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
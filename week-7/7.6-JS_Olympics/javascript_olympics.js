 // JavaScript Olympics

// I paired [with: Evan Druce/Lisa Dannewitz] on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up

var athlete1 = {};
athlete1.name = "Michael Phelps";
athlete1.event = "swimming";
var athlete2 = {};
athlete2.name = "Usain Bolt";
athlete2.event = "sprinting";
var athleteArray = [athlete1, athlete2];

function win(newArray){
  for (var i = 0; i < newArray.length; i++){
    newArray[i]["win"] = newArray[i]["name"] + " won the " + newArray[i]["event"] + "!";
  }
  return newArray
}

console.log(win(athleteArray))

// Jumble your words

function reverse(string){
  return string.split("").reverse().join("");
}

console.log(reverse("monkeyshines"))

// 2,4,6,8

function even(array) {
  function isEven(x) {
    return x % 2 === 0;
  }
  return array.filter(isEven);
}

console.log(even([1,2,3,4,5,6,7]))

// "We built this city"

function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


/*
// Reflection
1. What JavaScript knowledge did you solidify in this challenge?
---A lot of it still feels awkward to me, but it was helpful practicing with objects and arrays.

2. What are constructor functions?
---A constructor is any function that is used as a constructor. When new Function() is called, JS does four things: 1) creates a new object; 2) sets the constructor property of the object; 3) it sets up the object to delegate to Function.prototype and inherits all of the prototype's properties; and 4) calls Function() in the context of the new object.
---Constructor functions are one of two ways to create a JS Object. Constructor function type notation is preferred if you need to do some initial work before the object is created or require multiple instances of the object where each instance can be changed during the lifetime of the script.

3. How are constructors different from Ruby classes (in your research)?
---The syntax is completely different. There's no Class keyword in JS, and JS uses 'prototype.'

*/
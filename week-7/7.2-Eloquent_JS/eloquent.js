// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 13
number += 10

/*-Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.*/
food = prompt("What's your favorite food?")
console.log("Hey! That's my favorite too!")




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle
for (var i=1;i<8;i++) {
  output = "#";
  while(output.length<i) {
    output += "#";
  }
  console.log(output);
}

//FizzBuzz
for(var i=1;i<=100;i++) {
  if(i%3===0) {
    if(i%5===0) console.log("FizzBuzz");
    else console.log("Fizz");
  } else if(i%5===0) {
    console.log("Buzz");
  } else {
    console.log(i)
  }
}

//Chess Board
var size = 8 //assuming positive integer

var oddLine = ""

for(var i=0;i<size;i++) {
  if(i%2===0) oddLine+="  ";
  else oddLine+="#";
}

var evenLine = oddLine.split("").reverse().join("");

for(var i=0;i<size;i++) {
  if(i%2===0) console.log(oddLine);
  else console.log(evenLine);
}




// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.




/* Reflection?
0. Introduction
-Did you learn anything new about JavaScript or programming in general?
---I previously thought JavaScript and Java were in some way related. Strange and unfortunate that they are not.
---I liked these quotes: "The art of programming is the skill of controlling complexity." "Programmers who refuse to keep exploring will stagnate, forget their joy, and get bored with their craft."
---And wow, I forgot about Netscape.
-Are there any concepts you feel uncomfortable with?
---I'm not yet sure the different between the JS environments (the browser and Node.js).


1. Values, Types, and Operators
-Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
---Similarities: A lot of the basics seem the same or very similar. Numbers, arithmetic, strings, booleans, and the !/</>/&&/|| operators are all the same. The conditional/ternary operator is also the same.
---Differences: NaN is new and handy. JS uses '++' whereas Ruby uses '+=', although JS has '+=' too. Functions vs. methods. Console.log vs. puts/print. Null vs. nil. Undefined just seems new and is supposedly interchangeable with null. TYPE COERCION! This seems terrifying so I think '===' and '!==' will become much more prevalent.


2. Program Structure
-What is an expression?
---An expression is a fragment of code that produces a value.
-What is the purpose of semicolons in JavaScript? Are they always required?
---A semicolon marks the end of a statement. They are not technically always required, but the rules for when they can be safely omitted are somewhat complex and error-prone.
-What causes a variable to return undefined?
---If you ask for the value of an empty variable.
-What does console.log do and when would you use it? What Ruby method(s) is this similar to?
---The console.log function writes out its arguments to some text output device, aka, it outputs values. It is similar to the Ruby #puts/print methods.
-Describe while and for loops
---A 'while loop' executes a statement/block as long as the expression produces a value that is true when converted to Boolean type.
---A 'for loop' is essentially a while loop with a defined counter to track the progress of the loop.
-What other similarities or differences between Ruby and JavaScript did you notice in this section?
---The syntax for a lot of function calls is opposite of Ruby's method calls. Ex., in Ruby to convert a string to a number you use '10'.to_i, but in JS it would be Number('10').


3. Functions (Skip the sections on closure and recursion)
-What are the differences between local and global variables in JavaScript?
-When should you use functions?
-What is a function declaration?
-Complete the minimum exercise in the eloquent.js file.

4. Data Structures: Objects and Arrays
-Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
-What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
-Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
-What is a JavaScript object with a name and value property similar to in Ruby?
*/
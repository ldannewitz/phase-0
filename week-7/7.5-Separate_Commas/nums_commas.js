
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Lyudmila Arinich.

// Pseudocode
// separateComma(1569743) == "1,569,743"
// Define a function
// Convert number to an array of strings
// Count digits
// Count commas = ((digits-1) / 3)
// frontDigits = digits % 3
// Set up a new array
// WHILE there still are frontDigits
  // push that digit into a new array
// END
// Add a comma
// Repeat for sets of 3 at end


// Initial Solution

// function separateComma(number) {
//   var array = String(number).split("");
//   var digits = array.length;
//   var frontDigits = digits % 3;
//   var result = [];

//   var i = 0
//   while(frontDigits > i) {
//     result.push(array[i]);
//     i++;
//   }
//   if(result!==[]){
//     result.push(',');
//   }
//   digits -= frontDigits;
//   i = frontDigits;
//   while(digits > frontDigits) {
//     for(var x=0;x<3;x++){
//       result.push(array[i]);
//       i++;
//     }
//     digits -= 3;
//     if(digits>0){
//       result.push(',');
//     }
//   }

//   return result.join('');
// }

// console.log(separateComma(21569743))
// separateComma(1569743) == "21,569,743"


// Refactored Solution

function separateComma(number) {
  return number.toLocaleString();
}

console.log(separateComma(21569743))


// Your Own Tests (OPTIONAL)



/*
// Reflection
1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
--No, the logic was still the same, but the implementation was slightly different. Some of the methods we tried weren't functions in JS so we had to improvise.

2. What did you learn about iterating over arrays in JavaScript?
--It's very similar to Ruby. We didn't technically iterate over our arrays because we used loops and index numbers. Our refactored solution didn't use an array.

3. What was different about solving this problem in JavaScript?
--I don't exactly remember my Ruby solution. We tried to find a JS equivalent to #each_slice, and we couldn't find anything comparable. Also our refactored solution used a method that I don't believe is available in Ruby.

4. What built-in methods did you find to incorporate in your refactored solution?
--We used the function .toLocaleString, which turns a number into a string with appropriate commas.


*/
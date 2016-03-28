/*
User Stories written by Person 1 (Ben Flores)
Pseudocode written by Person 2 (Lisa Dannewitz)


---SUM---
1. As a user, I want to have a function called sum.
2. As a user, sum should give me the sum of ALL of the elements in an array that has an odd number of elements.
3. As a user, sum should give me the sum of ALL of the elements in an array that has an even number of elements.

Input: array of numbers
Output: integer
Steps:
-Define sum function
--Take input array and sum numbers
--Return sum


---MEAN---
4. As a user, I want to have a function called mean.
5. As a user, mean should give me the average of ALL of the elements in an array that has an odd number of elements.  I need an exact amount, not a rounded integer.
6. As a user, mean should give me the average of ALL of the elements in an array that has an even number of elements.  I need an exact amount, not a rounded integer.

Input: array of numbers
Output: float
Steps:
-Define mean function
--Store array length as elements variable
--Take input array and sum numbers
--Convert sum to float
--Divide sum by elements and store as mean variable
--Return mean

---MEDIAN---
7. As a user, I want to have a function called median.
8. As a user, median should give me the median value of ALL of the elements in an array that has an odd number of elements.
9. As a user, median should give me the median value of ALL of the elements in an array thta has an even number of elements.  I need an exact amount, not a rounded integer.

Input:
Output:
Steps:
-Define median function
--Take input array and sum numbers
--Convert sum to float
--Divide sum by two and store as median variable
--Return median

*/

//sum
// As a user, I want to take a list of numbers and add all of the elements in that list
// together to produce a sum.

function sum(array){
  return array.reduce(function(previous, current) {return previous + current}, 0);
}

console.log(sum([1,2,3,4,5,6,7,8,9,10,11]))


//Mean
// As a user, I want to be able to find the arithmetic mean of a list of numbers,
// defined as the sum of all the numbers in thelist divided by the number of numbers
// in the list.

function mean(array){
  var elements = array.length;
  var sum = array.reduce(function(previous, current) {return previous + current}, 0);

  return sum/elements;
}
console.log(mean([1,2,3,4,5,6,7,8,9]))

//Median
// As a user, I want to be able to find the median number in a list of numbers, defined
// as the numbers that separates the upper half of the list from the lower half, if the
// the list of numbers is ordered.
function median(array){
  array.sort(function(a, b) {return a - b})
  var half = Math.floor(array.length / 2)
​
  if (array.length % 2 !== 0) {
    var median = array[half]
  } else {
    median = (array[half] + array[half - 1]) / 2.0
  }
  return median
}
console.log(median([1,2,3,4,5,6,7,8,9,10]))

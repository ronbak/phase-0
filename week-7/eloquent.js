// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var twenty = 20;
console.log(twenty * 2);

// var food = prompt("What is your favorite food?");
// alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle
var triangle = '#';
while (triangle.length <= 7){
  console.log(triangle);
  triangle += "#";
}

// Functions

// Complete the `minimum` exercise.
function min(number1, number2){
  if (number1 < number2){
  return number1;
  }
  else {
    return number2;
  }
};

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
    name: "Bobby",
    age: 30,
    food: ["Pad Thai", "Smoked bbq brisket", "Burgers"],
    quirk: "Recently became a country music fan.",
};

console.log(me.name)
console.log(me.age)
console.log(me.food)
console.log(me.quirk)
// Separate Numbers with Commas in JavaScript **Pairing Challenge**
// 
// 
// I worked on this challenge with: Bobby Reith/Mike Gwozdek.
// 
// Pseudocode
//  take the input of integer
//  turn the integer into a string then reverse the string
//  add a comma after 3 chars 
//  the return will be a string with a comma in the thousands place 
// 
// Initial Solution

   var separateComma = function(integer){
     var digits = integer.toString().split('').reverse();
     var newNumber = "", end = 0, wordCounter = 0, commaCounter = 0
     
    while (commaCounter <= digits.length + (end-1) ) {
       if (commaCounter % 4 !== 0)  {
         newNumber += digits[wordCounter];
         wordCounter++;
         commaCounter++;
       }
       
       else if (commaCounter % 4 === 0) {
         newNumber += ",";
         commaCounter++;
         end++
       }
     }    
     return newNumber.substr(1).split("").reverse().join("");
   };

 console.log(separateComma(1212890))

// Refactored Solution
var separateComma = function(integer){
      return integer.toLocaleString();
}  
console.log(separateComma(123456789))
//  
// Your Own Tests (OPTIONAL)
//  
//  Reflection
// 1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Our thought process was to approach the problem coming up with the logic needed to pseudocode. From the pseudocode we
// had the basic idea of how we wanted to approach the problem and could research any syntax needed for JavaScript.

// 2. What did you learn about iterating over arrays in JavaScript?
// Iterating in JavaScript can loop through either a block of code or properties of an object depending on which 
// loop (for, for/in, while, do/while) is setup.

// 3. What was different about solving this problem in JavaScript?
// The syntax for JavaScript is different so we had to first come up with what we wanted the result to be then research 
// the best way to execute the code.

// 4. What built-in methods did you find to incorporate in your refactored solution?
// We used .toLocaleString() which was able to take the integer and automatically add the commas in the correct place.
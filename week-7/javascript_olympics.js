 // JavaScript Olympics

// I paired  with: Connor Reaumond on this challenge.

// This challenge took me [#] hours.

// Bulk Up
var athletes = [{name: "Sarah Hughes", event: "Ladies Singles"} , {name: "Usain Bolt", event: "Running"}]

function win (athletes) {
  for (var counter = 0; counter < athletes.length; counter ++ )
     console.log(athletes[counter].win = athletes[counter].name + " won the " + athletes[counter].event);  
};

win(athletes)

// Jumble your words
function backward(string){
  console.log(string.split('').reverse().join(''));
}

backward("hello world")

// 2,4,6,8
var even = []
var array = [1,2,3,4,5,6,7,8,9]
function checkEven(array) {
  for (var counter = 0; counter < array.length; counter ++) {
    if (array[counter] % 2 == 0) {
      even.push(array[counter])
    };   
  };
  console.log(even);
};

checkEven(array)

//"We built this city"

function Athlete(name, age, sport, quote){  
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};
  

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// 1. What JavaScript knowledge did you solidify in this challenge?
// Iterating in JavaScript was solidified for me in this challenge.

// 2. What are constructor functions?
// Constructor functions are used when you need to do some initial work before the object is created or require multiple
// instances of the object where each instance can be changed during the lifetime of the script.

// 3. How are constructors different from Ruby classes (in your research)?
// Constructors are different from Ruby classes because they can be created before the object is created.
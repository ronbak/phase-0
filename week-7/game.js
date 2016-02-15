 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: To create a game where a user has to pick a type animal and guess the sound that aninal makes
// Goals: Have the user pick the right comination of sound and type to get the correct object
// Characters: dog, cat, bird
// Objects: dog(type and sound), cat(type and sound), bird(type and sound)
// Functions: compare the properties to deterime the object

// Pseudocode
// Declare a "dog" object with the properties of type and sound
// Declare a "cat" object with the properties of type and sound
// Declare a "bird" object with the properties of type and sound
//
// Create a method to compare the user input to property types to the objects

// Initial Code
var dog = {
    type: 'Boxer',
    sound: 'Woof',
}

var cat = {
    type: 'Tabby',
    sound: 'Moew',
}

var bird = {
    type: 'Sparrow',
    sound: 'Tweet',
}

var input1 = prompt("Please pick one of the following: Boxer, Tabby, Sparrow");

var input2 = prompt("Please guess the sound your first choice makes: Woof, Moew, Tweet")

function Answer(input1, input2){
    if (input === input2){
        console.log("You are correct!");
    }
    else{
        console.log("Please try again");
    }
}





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
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
//   IF user selects the type AND sound key for a dog, tell them they described a dog
//   IF user selects the type AND sound key for a cat, tell them they described a cat
//   IF user selects the type AND sound key for a bird, tell them they described a bird
//   IF user selects the wrong combination of type and sound keys, tell them to please try again.

// Initial Code
var dog = {
    type: 'Boxer',
    sound: 'Woof',
};

var cat = {
    type: 'Tabby',
    sound: 'Meow',
};

var bird = {
    type: 'Sparrow',
    sound: 'Tweet',
};

var input1 = prompt('Please pick one of the following animals: Boxer, Tabby, Sparrow');

var input2 = prompt('Please guess the sound the animal you chose makes: Woof, Meow, Tweet');

var input3 = prompt('Please name the animal')


function Answer(input1, input2){
    if (dog.type === input1 && dog.sound === input2){
        dog.name = input3;
        alert('You described a dog! You\'ve named them '  + dog.name + '.');
    }
    else if (cat.type === input1 && cat.sound === input2){
        cat.name = input3;
    	alert('You described a cat! You\'ve named them ' + cat.name + '.');
    }
    else if (bird.type === input1 && bird.sound === input2){
        bird.name = input3;
        alert('You described a bird! You\'ve named them ' + bird.name + '.');
    }
    else{
        alert('Please try again');
    }
}

Answer(input1, input2)

// Refactored Code




// Reflection
//1. What was the most difficult part of this challenge?
// The most difficult part of this challenge was coming up with a simple game idea that I could actually implement.
// I had many ideas but once I started to to try and implement them I realized that what I thought was simple was 
// actually much more complicated.

// 2. What did you learn about creating objects and functions that interact with one another?
// Once I figured out what I wanted my game to accomplish, I found it relatively easy to have the objects and functions
// interact the way I wanted them to.

// 3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they
// and how do they work?
// I did not find any built-ins for my code.

// 4. How can you access and manipulate properties of objects?
// You can access and manipulate properties of objects by typing the object name and property using a period “.” between them.
// (name.property)

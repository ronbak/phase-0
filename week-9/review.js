// JavaScript Grocery List

//Release 1: User Story
  // As a user, I want to be able to create a new grocery list.
  // As a user, I want to be able to add an item and quantity to the previously created grocery list.
  // As a user, I want to be able to remove an item from the grocery list.
  // As a user, I want to be able to update the quantity of an item already in the grocery list.
  // As a user, I want to be able to print the list in a visually appealing format.

//Release 2: Pseudocode
// Create list
//  input: string of items separated by spaces
//  steps: separate string into a collection of items 
//         create an empty collector to place item with quantity
//         enter items in string into collector with a default quantity of 1
//  output: list object

// Add an item
//  input: item and quantity
//  steps: create a function to accept arguments for item and quantity
//         add item and quantity to list
//  output: list object with item added

// Remove an item
//  input: item to be removed from list
//  steps: create a function to accept argument for item to be removed
//         delete item from list
//  output: list with item removed

// Update the quantity of an item
//  input: item to be updated
//  steps: create a function to accept argument for item and updated quantity
//         locate item to be updated and change quantity to new amount
//  output: list with item showing new quantity

// Print a list 
//  input: the list of items and quantities
//  steps: create a function to accept argument for the list
//         loop through the keys and values 
//         print list saying “buy quantity of item."
//  output: strings of quantities and items to buy

//Release 3: Initial Solution
function createList(items) {
  var groceries = items.split(' ');
  this.list = {};

  for (var i=0; i<groceries.length; i++){
    list[groceries[i]] = 1;
  }
}

function addItem(item, quantity){
    list[item] = quantity;
}

function removeItem(item){
    delete list[item];
}

function updateAmount(item, quantity){
    list[item] = quantity;
}

function printList(list){
  console.log("Grocery List")
    for(var item in list){
        console.log("Buy " + list[item] + ' ' + item)
    }
}

createList('apples carrots cereal pizza bananas milk')
addItem('peaches', 3);
removeItem('bananas')
updateAmount('carrots', 3)
updateAmount('milk',2)
printList(list)


//Release 4: Refactor
function createList(items) {
  var groceries = items.split(' ');
  this.list = {};
  for (var i=0; i<groceries.length; i++){
    list[groceries[i]] = 1;
  }
}

function updateList(item, quantity){
    list[item] = quantity;
}

function removeItem(item){
    delete list[item];
}

function printList(list){
  console.log("Grocery List")
    for(var item in list){
        console.log("Buy " + list[item] + ' ' + item)
    }
}
createList('apples carrots cereal pizza bananas milk')
updateList('apples',2)
printList(list)

//Release 5: Reflect
// 1. What concepts did you solidify in working on this challenge?
// This challenge helped solidify creating functions. It also helped practicing altering keys and values within an object.

// 2. What was the most difficult part of this challenge?
// The hardest part of this challenge was to have the variable “list” be defined in all the functions. I originally had the
// variable as a global function by mistake. I ran into some issues changing it from a global variable until I remembered 
// with constructor functions “this” can be used.

// 3. Did an array or object make more sense to use and why?
// For this challenge I used an object. It made more sense because on the grocery list you're not going to have an item 
// listed more than once. This allowed the key to be set to the item and the quantity set to the value.
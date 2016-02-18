// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Loop through votes to tally Bob for president
// create an empty array for each office
// use FOR..IN loop
  // for all votes for each officer, push into the corresponding array
// create a count object for each officer
// for loop - as long as counter is less than the arrays length, increment count by 1
// for every students vote, add 1 to the students total in voteCount
// do this for each officer
// set voteCount[officer] = corresponding object variable

// declare winners
  // retrieve the max value of votes for each candidate
  // push counts into a new array for name, count(key, value)
  // for loop to iterate through counts array
  // if counts array is greater than max variable, store in counts array with counter.
// put data into corresponding officers obj

// __________________________________________
// Initial Solution

// create an empty array for each office
var presArray = []
var presObj = {}

// use FOR..IN loop
  // for all votes for each officer, push into the corresponding array
for (var x in votes) {
  presArray.push(votes[x]["president"]);
}

// for loop - as long as counter is less than the arrays length, increment count by 1
// for every students vote, add 1 to the students total in voteCount
for (var i = 0; i<presArray.length; i++){
  if(!presObj[presArray[i]])
    presObj[presArray[i]] = 0;
  ++presObj[presArray[i]];
    
}
// set voteCount[officer] = corresponding object variable
voteCount["president"] = presObj;

// create an empty array for each office
var vicePresArray = []
var vicePresObj = {}

// use FOR..IN loop
  // for all votes for each officer, push into the corresponding array
for (var x in votes) {
  vicePresArray.push(votes[x]["vicePresident"]);
}

// for loop - as long as counter is less than the arrays length, increment count by 1
// for every students vote, add 1 to the students total in voteCount
for (var i = 0; i<vicePresArray.length; i++){
  if(!vicePresObj[vicePresArray[i]])
    vicePresObj[vicePresArray[i]] = 0;
  ++vicePresObj[vicePresArray[i]];
    
}
// set voteCount[officer] = corresponding object variable
voteCount["vicePresident"] = vicePresObj;

// create an empty array for each office
var secretaryArray = []
var secretaryObj = {}

// use FOR..IN loop
  // for all votes for each officer, push into the corresponding array
for (var x in votes) {
  secretaryArray.push(votes[x]["secretary"]);
}

// for loop - as long as counter is less than the arrays length, increment count by 1
// for every students vote, add 1 to the students total in voteCount
for (var i = 0; i<secretaryArray.length; i++){
  if(!secretaryObj[secretaryArray[i]])
    secretaryObj[secretaryArray[i]] = 0;
  ++secretaryObj[secretaryArray[i]];
    
}
// set voteCount[officer] = corresponding object variable
voteCount["secretary"] = secretaryObj;

// create an empty array for each office
var treasurerArray = []
var treasurerObj = {}

// use FOR..IN loop
  // for all votes for each officer, push into the corresponding array
for (var x in votes) {
  treasurerArray.push(votes[x]["treasurer"]);
}

// for loop - as long as counter is less than the arrays length, increment count by 1
// for every students vote, add 1 to the students total in voteCount
for (var i = 0; i<treasurerArray.length; i++){
  if(!treasurerObj[treasurerArray[i]])
    treasurerObj[treasurerArray[i]] = 0;
  ++treasurerObj[treasurerArray[i]];
    
}
// set voteCount[officer] = corresponding object variable
voteCount["treasurer"] = treasurerObj;
console.log(voteCount);

var maxPresValue = 0;
var maxPresIndex = 0;
  // retrieve the max value of votes for each candidate
  // push counts into a new array for name, count(key, value)
  // for loop to iterate through counts array
  // if counts array is greater than max variable, store in counts array with counter.
for (var key in presObj) {
  if (presObj[key] > maxPresValue) { 
    maxPresValue = presObj[key];
    maxPresIndex = key;
  }
};
// put data into corresponding officers obj
officers["president"] = maxPresIndex

var maxVicePresValue = 0;
var maxVicePresIndex = 0;
  // retrieve the max value of votes for each candidate
  // push counts into a new array for name, count(key, value)
  // for loop to iterate through counts array
  // if counts array is greater than max variable, store in counts array with counter.
for (var key in vicePresObj) {
  if (vicePresObj[key] > maxVicePresValue) { 
    maxVicePresValue = vicePresObj[key];
    maxVicePresIndex = key;
  }
};
// put data into corresponding officers obj
officers["vicePresident"] = maxVicePresIndex

var maxSecretaryValue = 0;
var maxSecretaryIndex = 0;
// retrieve the max value of votes for each candidate
  // push counts into a new array for name, count(key, value)
  // for loop to iterate through counts array
  // if counts array is greater than max variable, store in counts array with counter.
for (var key in secretaryObj) {
  if (presObj[key] > maxSecretaryValue) { 
    maxSecretaryValue = secretaryObj[key];
    maxSecretaryIndex = key;
  }
};
// put data into corresponding officers obj
officers["secretary"] = maxSecretaryIndex

var maxTreasurerValue = 0;
var maxTreasurerIndex = 0;
// retrieve the max value of votes for each candidate
  // push counts into a new array for name, count(key, value)
  // for loop to iterate through counts array
  // if counts array is greater than max variable, store in counts array with counter.
for (var key in treasurerObj) {
  if (treasurerObj[key] > maxTreasurerValue) { 
    maxTreasurerValue = treasurerObj[key];
    maxTreasurerIndex = key;
  }
};
// put data into corresponding officers obj
officers["treasurer"] = maxTreasurerIndex
console.log(officers)
// __________________________________________
// Refactored Solution



// __________________________________________
// Reflection






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
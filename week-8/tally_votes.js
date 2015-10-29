// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me 1.5 hours.

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
//
// Block to input votes
// Input: no arguments taken, needs votes object
// Output: VoteCount with each officer number of votes correlated to them in the correct office.

// Create a for loop to iterate through votes object
//   Create a for loop to iterate through the individual vote.
//     IF voteCount[current office][current candidate] exists
//       then voteCount[current office][current candidate] += 1
//     ELSE
//       voteCount[current office][current candidate] = 1
//     END
//   END
// END

// Block to count votes for each office and return the max (aka the winner);
// Input: needs voteCount
// Output: Winner

// Create a for loop to iterate through voteCount object
//   Create a for loop to iterate through each office object
//     Find max for voteCount[office][candidate], set candidate as property to officers[office]
//   END
// END

// __________________________________________
// Initial Solution

// for (var voter in votes) {
//   for (var office in votes[voter]) {
//     if (votes[voter][office] in voteCount[office]) {
//       voteCount[office][votes[voter][office]] += 1;
//     } else {
//       voteCount[office][votes[voter][office]] = 1;
//     }
//   }
// }


// for (var position in voteCount) {
//   var max = 0;
//   var topRunner = "";
//   for (var candidate in voteCount[position]) {
//     if (voteCount[position][candidate] > max) {
//       max = voteCount[position][candidate];
//       topRunner = candidate;
//     }
//   }
//   officers[position] = topRunner;
// }


// __________________________________________
// Refactored Solution

for (var voter in votes) {
  for (var office in votes[voter]) {
    var candidateChoice = votes[voter][office];
    if (candidateChoice in voteCount[office]) {
      voteCount[office][candidateChoice] += 1;
    } else {
      voteCount[office][candidateChoice] = 1;
    }
  }
}


for (var position in voteCount) {
  var max = 0;
  var topRunner = "";
  for (var candidate in voteCount[position]) {
    var numberOfVotes = voteCount[position][candidate];
    if (numberOfVotes > max) {
      max = numberOfVotes;
      topRunner = candidate;
    }
  }
  officers[position] = topRunner;
}




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// I learned how to do to do the for (var key in object). Also, we realized how important it is to accurately name your key variable.

// Were you able to find useful methods to help you with this?
// No we were not! I was looking for some way to set the default value of a property = to 0, but we had no luck. We also looked for a way to find the maximum value of an object and return the key, but we didn't find any way that was more concise and descriptive than our max counter. I mean, we found a shorter way, but it wasn't necessarily much prettier.

// What concepts were solidified in the process of working through this challenge?
// This challenge solidified my ideas of how to call various values or keys when looping through objects. I learned that it is super important to have good names for your keys, and you need to keep track of the order of the loops that you are doing so you can call them later (ex. candidateChoice = votes[voter][office];).


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
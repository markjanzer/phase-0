/*
Gradebook from Names and Scores
I worked on this challenge with Eunice Do.
This challenge took me 1.25 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], // Joseph's scores
               [85, 80, 90, 90], // Susan's scores
               [75, 70, 80, 75], // William's scores
               [100, 90, 95, 85] ] // Elizabeth's scores

// __________________________________________
// Write your code below.
/*
var gradebook = {};

gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
      sum += array[i];
    }
  return (sum/array.length);
}
*/

// __________________________________________
// Refactored Solution

var gradebook = {}
for (var i = 0; i < scores.length; i++) {
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

function average(array) {
  var sum = array.reduce(function(prev, curr) {
    return prev + curr;
  });
  return (sum/array.length);
}

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I learned that the brackets are needed for JavaScript to interpret the values inside of them. The confusing example is when we had to use gradebook[students[i]] in the refactored solution, it was a lot of evaluating.

// How did you iterate over nested arrays in JavaScript?
// You iterate over nested arrays the same way you do in Ruby. You cannot access values in arrays with indexes using the . because numbers are not valid variable names, so they must be evaluated using [].

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We were able to incorporate reduce! It takes a callback function as an argument. This function has four parameters (previous value, current value, index, array), but I think only the first two are necessary. In this function you return how you want to reduce the previous value and the current value.








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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
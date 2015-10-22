
/*
Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:.

// Pseudocode
Input: Integer
Output: String with commas.

Define a function seperateComma that takes an integer as an argument
  Set integer to array
  Define solutions array
  While integer length is four or greater.
    Pop off last three characters and add them to a solutions array
    Add "," to front of solutions array
  Concatenate original array with the solution array (original first, solution second).
  Return solution as a string
End
*/


// Initial Solution
// function separateComma(integer) {
//   integer = integer.toString().split("");
//   var solutions = [];
//   while (integer.length >= 4) {
//     solutions = (integer.slice(-3)).concat(solutions);
//     integer = integer.slice(0, -3);
//     solutions.unshift(",");
//   };
//   integer = integer.concat(solutions).join("");
//   return integer
// }

// Refactored Solution
function separateComma(integer) {
  integer = integer.toString().split("");
  var solutions = [];
  while (integer.length >= 4) {
    solutions = (integer.splice(-3)).concat(solutions);
    solutions.unshift(",");
  };

  return integer.concat(solutions).join("");
}



// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// console.log(separateComma(47155504));

assert(
  (typeof separateComma === 'function'),
  "separateComma should be a function.",
  "1. "
)

assert (
  (separateComma(1234) === '1,234'),
  "Expected '1,234'",
  "2. "
)

assert(
  (typeof separateComma(1234) === 'string'),
  "Expected a string as result.",
  "3. "
)

// Does not work for my current node, works in chrome JS Console. .include is a new method.
// assert (
//   (separateComma(1234).includes(",") === true),
//   "Expected separateComma to return string with comma.",
//   "4. "
// )

assert (
  (separateComma(12) === '12'),
  "Expected '12'",
  "5. "
)

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We approached the problem differently because Daniel had a suggestion that was different from my own idea and we liked it more. I think I would have done a way similar to my ruby code. The biggest difference was the methods that we used.

// What did you learn about iterating over arrays in JavaScript?
// I have experience iterating over arrays in JavaScript and we only used one while loop in our code. Because of this, I did not learn much about iterating over arrays. Remember to make brackets.

// What was different about solving this problem in JavaScript?
// The methods were very different. We didn't know what was destructive and what wasn't, and we don't know how to make methods destructive (aside from setting equality).

// What built-in methods did you find to incorporate in your refactored solution?
// We used unshift, split, toString, splice, and concat. Also in our tests we used .includes on a integer and found that my version of JavaScript isn't new enough for it to work (it did work in the Chrome JavaScript Console).
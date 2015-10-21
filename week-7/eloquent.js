// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var dinner = "Potato";
// Ehh I'm hungry
dinner += " and bacon";
console.log(dinner);

// prompt("What is your favorite food?");
// alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var size = 8;
var chessBoard = ""
for (var i = 0; i < size; i++) {
  if (i % 2 == 0) {
    for (var j = 0; j < size; j++) {
      if (j % 2 == 0) {
        chessBoard += " ";
      }
      else {
        chessBoard += "#";
      }
      if (j == size - 1) {
        chessBoard += "\n";
      }
    }
  }
  else {
    for (var j = 0; j < size; j++) {
      if (j % 2 == 0) {
        chessBoard += "#";
      }
      else {
        chessBoard += " ";
      }
      if (j == size - 1) {
        chessBoard += "\n";
      }
    }
  }
}
console.log(chessBoard);

// Functions

// Complete the `minimum` exercise.
function min(arg1, arg2) {
  return arg1 < arg2 ? arg1 : arg2
}

function minimum(arg1, arg2) {
  return Math.min(arg1, arg2)
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
name: "Mark Janzer",
age: 24,
favorite_foods: ["Pizza", "Burritos", "Macaroni and Cheese", "Carrot Cake"],
"quirk": "I have a speech impediment that people assume as a vague accent. It is very entertaining to ask people to guess where I am from."
}

console.log(me.name);
console.log(me["age"]);
console.log(me["quirk"]);
// Release 1
// Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes (Links to an external site.), for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"

// Would it make more sense to have win be defined as a function expression or a function declaration?

// Input: an array of athletes (athletes are objects that include name and event)
// Output: Returns nothing, side effect it adds win property to each athelete.

 // instance of athelete object, sarah = {
//   name: "Sarah Hughes",
//   event: "Ladies Singles",
//   win: "name won at event"
// }

// define a function that takes an array
//   iterate through each athlete
//     set each athelete's win property equal to "name won at event"

function addWin(athletes) {
  for (var i = 0; i < athletes.length; i++) {
    athletes[i].win = athletes[i].name + " won at " + athletes[i].event + "!";
  }
}


//  Release 2
// Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Links to an external site.) and Array (Links to an external site.) docs. HINT: Think about how you would write this in Ruby and translate!
// Input: string
// Output: string reversed

function reverse(str) {
  return str.split("").reverse().join("");
}

// Release 3
// Create a function that accepts an array of numbers. Return an array with only the even numbers. You can do this manually or use built-in JavaScript Array Methods (Links to an external site.). Are you missing Ruby yet?

// Input: array of numbers
// Output: array of even numbers
function returnEven(arr) {
  return arr.filter(isEven)
}

function isEven(value) {
  return (value%2 === 0 )
}


// Release 4
// Driver test code has been provided for you below. Copy and paste it to your javascript_olympics.js file. Read the definition of a constructor function from this excellent (albeit old) article (Links to an external site.). This is a great article to return to when you have the time to learn more about constructor functions.

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// Driver Code ---------------------
var Mark = {
  name: "Mark Janzer",
  event: "Underwater Chess"
}

var Kevin = {
  name: "Kevin Mark",
  event: "Basketball"
}

var competitors = [Kevin, Mark];

addWin(competitors);

console.log(Mark.win);
console.log(Kevin.win);
console.log(reverse(Mark.event));
var arr = [1,2,3,4];
console.log(returnEven(arr));

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// What JavaScript knowledge did you solidify in this challenge?
// This challenge solidified my knowledge of .filter, and reminded me that the .reverse function only works on arrays. Also this challenge helped to begin refreshing my knowledge on callback functions and constructor functions.

// What are constructor functions?
// Constructor functions are similar to classes in Ruby, or at least similar to the initialize portion of the class. You can use a method to define the basic characteristics of an object, and you can do this by passing in arguments. You use the this keyword to give this object the property.

// How are constructors different from Ruby classes (in your research)?
// Constructors are very similar to Ruby classes, I think the main differences lie in how they are put together. JavaScript uses a function while Ruby uses it's own keyword. The syntax is quite different. Also, I think that inheritance will be different with JavaScript.
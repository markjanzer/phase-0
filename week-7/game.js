// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Get to gold without touching shade creature.
// Goals:
// Characters: Hero, Shade
// Objects: Gold
// Functions: hero.left, hero.right, hero.forward. hero.back, hero.cheat

// --------------- PsuedoCode ----------------
// createa a gold object.
//   Give this gold object coordinates with a random x value between 1 and 8, and a y value of 8.

// create a shade object.
//   Give this coordinates of 4,4.
//   give this shade object a move function that takes no parameters
//     I want this to randomly choose either to increase or decrease y or x value by one. I guess first it should check what locations are allowed. Then choose randomly between the three. At the end of the move it should check if the location of the shade and the hero are the same. If they are, it'll return a lost game.

// create a hero object.
//   Give hero the coordinates 3,0
//   Give the hero four move commands, forwards, backwards, left, and right. These are each going to be functions.
//     If hero tries to move out of bounds it returns that there is a wall there, and the other functions are called.
//       Make shade move with shade.move
//       Call a function that tells the user how far away it is from the shade, and if the hero has gotten closer or further from the gold. If hero is 0 away from shade, the heroe dies, if hero is on gold, hero wins.
//
//   Define said function
// End

// Initial Code
// Place gold far away from hero spawn location (in the 7th or 8th row).
var gold = {
  coords: [Math.floor(Math.random() * 8 + 1), 7 + Math.floor(Math.random())];
}

// Spawn shade at (4,4). Allow shade to move in random direction. moveOptions is an array with all possibilities of movement and coordinates are filtered out if they are the same as the gold coordinates or if they are beyond the scope of the map (ex. (1,9)).
var shade = {
  coords: [4,4],
  move: function(){
    var moveOptions = [[shade.coords[0], shade.coords[1]+1], [shade.coords[0], shade.coords[1]-1], [shade.coords[0]+1, shade.coords[1]], [shade.coords[0]-1, shade.coords[1]]];
    moveOptions = moveOptions.filter(availableSpaceNoGold);
    shade.coords = moveOptions[Math.floor(Math.random() * moveOptions.length)];
  }
}

// Spawn hero at (3,1). Allow the hero to move left, right, forward, or back. If the space is not available, a turn is taken and the player is informed. After every turn, the hero gets information on his distance from the shade and the gold. This happens in postMove(), which also checks if the hero won or lost.
var hero = {
  coords: [3,1],
  forward: function(){
    var newSpace = [hero.coords[0], hero.coords[1]+1];
    newSpace = newSpace.filter(availableSpace);
    if (newSpace.length === 2) {
      hero.coords = newSpace;
    } else {
      console.log("There seems to be a wall there.");
    }
    postMove();
  },
  back: function(){
    var newSpace = [hero.coords[0], hero.coords[1]-1];
    newSpace = newSpace.filter(availableSpace);
    if (newSpace.length === 2) {
      hero.coords = newSpace;
    } else {
      console.log("There seems to be a wall there.");
    }
    postMove();
  },
  left: function(){
    var newSpace = [hero.coords[0]-1, hero.coords[1]];
    newSpace = newSpace.filter(availableSpace);
    if (newSpace.length === 2) {
      hero.coords = newSpace;
    } else {
      console.log("There seems to be a wall there.");
    }
    postMove();
  },
  right: function(){
    var newSpace = [hero.coords[0]+1, hero.coords[1]];
    newSpace = newSpace.filter(availableSpace);
    if (newSpace.length === 2) {
      hero.coords = newSpace;
    } else {
      console.log("There seems to be a wall there.");
    }
    postMove();
  },
  cheat: function(){
    hero.coords = gold.coords;
    postMove();
  }

}


function postMove(){
  var gameOver = false;
  shade.move();
  if (findDistance(hero.coords, gold.coords) === 0) {
    console.log("Congratulations! You Won!");
    gameOver = true;
  } else if (findDistance(hero.coords, shade.coords) === 0) {
    console.log("You were swallowed up in darkness, try again!");
    gameOver = true;
  }
  if (!gameOver) {
    console.log("You are " + findDistance(hero.coords, shade.coords) + " from the shadow. You are " + findDistance(hero.coords, gold.coords) +  " from the gold.");
  }
}

function availableSpaceNoGold (coords){
  if (findDistance(gold.coords, coords) === 0) {
    return false;
  }
  for (var i = 0; i < coords.length; i++)  {
    if ((coords[i] < 1) || (coords[i] > 8)) {
      return false;
    }
  }
  return true;
}

function availableSpace (coord){
  return (coord <= 8) && (coord >= 1);
}

function findDistance(coord1, coord2){
  return (Math.abs(coord1[0]-coord2[0]) + Math.abs(coord1[1]-coord2[1]))
}

// Sample Commands
hero.left();
hero.left();
hero.forward();
hero.forward();
hero.right();
hero.right();
hero.back();
hero.cheat();

// Refactored Code


// Reflection
// What was the most difficult part of this challenge?
// This challenge was fun but difficult! I had a tough time scaling my project down to an MVP, but I am very glad that I did so. I also was not sure about how I should organize the game. Should I have created an Object for the new game? I don't think it was necessary so I didn't do it. Otherwise, I am not used to JavaScript bug solving (so it took me longer to resolve issues). I set some functions working on the wrong objects and I was confused about when to return things.

// What did you learn about creating objects and functions that interact with one another?
// I found the interaction of objects to be relatively simple in my game. I wanted to use constructors, but I wasn't sure if it was necessary. I got some more practice with callback functions when I was using the filter function.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I have worked with filter once before, but this time I learned that it is not a destructive method. I also learned how to use a lot of properties of the Math object, such as .abs, .floor, and .rand(). It has a different approach compared to Ruby.

// How can you access and manipulate properties of objects?
// You can do: object.property = "Desired value" (doesn't have to be string). You can also set the values while defining the object, or you can set values while defining the object with a constructor.
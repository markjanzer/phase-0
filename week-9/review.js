// PseudoCode
// Use a constructor function to construct GroceryList objects.
//   DEFINE property list that is an object.

//   DEFINE an add function that takes two arguments, the item to buy and the number.
//     This adds the item to the list object with the food item as the key and the quantity as the value.
//   END

//   DEFINE a remove function that takes a food item name as a parameter, and an optional quantity remove.
//      IF removeQuantity is defined, then set the value of the food property equal to value - removeQuantity
//      IF the quantity value is <= 0 OR removeQuantity is not defined
//        Remove the item from the list
//      END
//   END

//   DEFINE an update function that takes two arguments, the name of the food and the updatedQuantity
//     Set the food key equal to updatedQuantity
//   END

//   DEFINE a print function that takes no arguments.
//    For now, loop through the list and console.log all of the food names and their values.
//   END
// END

// function GroceryList() {
//   this.list = {};
//   this.add = function(item, quantity) {
//     this.list[item] = quantity;
//   }
//   this.remove = function(item, removeQuantity) {
//     if (removeQuantity) {
//       this.list[item] -= removeQuantity;
//     }
//     if ((this.list[item] === 0) || (!removeQuantity)) {
//       delete this.list[item];
//     }
//   }
//   this.update = function(item, updatedQuantity) {
//     this.list[item] = updatedQuantity;
//   }
//   this.print = function() {
//     for (item in this.list) {
//       console.log(item + ": " + this.list[item]);
//     }
//   }
// }

// REFACTOR

function GroceryList() {
  this.list = {};
  this.add = function(item, quantity) {
    this.list[item] = quantity;
  }
  this.remove = function(item, removeQuantity) {
    console.log("This is removeQuantity" + removeQuantity)
    if (removeQuantity) {
      this.list[item] -= removeQuantity;
    }
    if ((this.list[item] <= 0) || (!removeQuantity)) {
      delete this.list[item];
    }
  }
  this.update = function(item, updatedQuantity) {
    this.list[item] = updatedQuantity;
  }
  this.print = function() {
    for (item in this.list) {
      console.log(item + ": " + this.list[item]);
    }
  }
}

// Driver Code
var novGroc = new GroceryList;
novGroc.add("pasta", 4);
novGroc.add("cake", 2);
novGroc.add("carrots", 7);
novGroc.remove("carrots", 3);
novGroc.add("doughnuts", 12);
novGroc.remove("cake")
novGroc.print();


// REFLECT
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// This solidified my understanding of constructor functions. I have not had that much practice working with constructor functions in JavaScript, so this was much needed practice.

// What was the most difficult part of this challenge?
// The most difficult part was learning how to make optional arguments. Its interesting that in JavaScript, an argument will get the value of undefined if it doesn't exist, but the program still runs. In some ways it is nice because it is flexible, but generally I would also like to know if I am putting the right amount of arguments.

// Did an array or object make more sense to use and why?
// Class that contains an object made the most sense to me. The object is great for the grocery list because I can use food names as the property names and the quantity as the value, and it does not matter what order they are in. I like using a class because it lets me create and manage multiple grocery lists.



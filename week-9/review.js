// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

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
// What was the most difficult part of this challenge?
// Did an array or object make more sense to use and why?



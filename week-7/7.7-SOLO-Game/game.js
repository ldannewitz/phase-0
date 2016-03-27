 // Design Basic Game Solo Challenge

// This is a solo challenge
// Create at least 2 objects w/properties
// Create at least 2 functions that interact with those objects by adding/modifying the properties

// Your mission description: Maze Game
// Overall mission: Navigate the maze
// Goals: move through the maze and find the exit
// Characters: you
// Objects: you, walls
// Functions: moveUp, moveDown, moveLeft, moveRight

// Pseudocode
// Define player Object
//    Input: name
//    Characteristics: name, location
//    Functions: move in any direction
// After each move:
//    IF wall, print that player has hit wall
//    Display position
//    IF at exit, print that player has won
//

// Initial Code
var exit = [10,5];


var player = {
  location: [9,5],

  moveUp: function() {
    if(player.location[1]!==10){
      player.location[1] += 1;
      console.log("You move up. Location = "+ player.location);
    } else {
      console.log("You can't move up. \
You're at the top of the screen")
    }
  },

  moveDown: function() {
    if(player.location[1]!==0){
      player.location[1] -= 1;
      console.log("You move down. Location = "+ player.location);
    } else {
      console.log("You can't move down. \
You're at the bottom of the screen")
    }
  },

  moveLeft: function() {
    if(player.location[0]!==0){
      player.location[0] -= 1;
      console.log("You move left. Location = "+ player.location);
    } else {
      console.log("You can't move left. \
You're at the side of the screen")
    }
  },

  moveRight: function() {
    if(player.location[0]!==10){
      player.location[0] += 1;
      console.log("You move right. Location = "+ player.location);
    } else {
      console.log("You can't move right. \
You're at the side of the screen")
    }
  },
};



player.moveRight()





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
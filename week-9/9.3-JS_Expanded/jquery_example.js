// U3.W9:JQuery


// I worked on this challenge [with: Denny Jovic].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body');
h1Element = $('h1');
imgElement = $('img');
bodyHeader = $("body > h1")

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

bodyHeader.css("color", "blue");
bodyHeader.css("border", "solid");
bodyHeader.css("visibility", "visible");

$(".mascot > h1").html("Fiery Skippers");


//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
    e.preventDefault()
   $(this).attr('src', 'http://vikki.ethernauts.net/images/firemage01.jpg')
   $(this).animate({width: "200px"}, 500, function(){
       $(this).animate({width: "400px"}, 500);
   });
});

$('img').on('mouseleave', function(e){
    e.preventDefault()
   $(this).attr('src', 'dbc_logo.png')
})


//RELEASE 5: Experiment on your own

/* We added animate to the release 4 code! */





})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/* REFLECTION
1. What is jQuery?
---JQuery is a JavaScript library that functions as a shortcut for writing webpage scripts. It interacts with the DOM and can manipulate html and css.

2. What does jQuery do for you?
---It allows us to make our static webpages dynamic. JQuery can add effects to change the size, shape, color, etc. of items on our page when a user interacts with it. For example, in this challenge we used JQuery to change an image to another image when the user scrolls over it.

3. What did you learn about the DOM while working on this challenge?
---It reaffirmed that the DOM is a giant outline. You can use that outline to target one or several objects depending on your goal. When we were trying to target one H1, but not the other, where our target fell in the outline became important.


*/
// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
h1Element = $('body > h1')
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$(h1Element).css('background-color', 'green')
$('div > h1').html('Squirrels 2016!')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.funnypica.com/wp-content/uploads/2012/01/Funny-Squirrels-Funny-Squirrel-Picture-05-FunnyPica.com_.jpg')
  })

  $('img').on('mouseleave', function() {
  	$(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own
$( "img" ).click(function() {
  $(this).animate({
    opacity: 0.5,
    left: "+=50",
    height: "toggle"
  }, 5000, function() {
    // Animation complete.
  });
});





})  // end of the document.ready function: do not remove or write DOM manipulation below this.
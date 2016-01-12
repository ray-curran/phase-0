// DOM Manipulation Challenge


// I worked on this challenge with Eddie Glenn.


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').className = "done";



// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";



// Release 3:
document.getElementById('release-3').style.backgroundColor = "#955251";



// Release 4:
document.getElementsByClassName('release-4')[0].style.fontSize = "2em";



// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

/*
Reflection

- What did you learn about the DOM?
	I learned that you can manipulate html items using any language, but JavaScript is a popular choice. It's kind of 
	confusing so far to see how this is useful without having any interaction (like changing something when it's hovered
	or clicked on), since I'd probably just make the changes in the css. I also learned that it's a little touchy when
	using selectors that get a group of elements rather than a single element by its ID.

- What are some useful methods to use to manipulate the DOM?
	The append child one was pretty cool, especially since the article made it seem like you could check certain things
	with an if statement before appending certain information. That's pretty neat. 


*/




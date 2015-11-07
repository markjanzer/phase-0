// DOM Manipulation Challenge


// I worked on this challenge with David Roberts

// Add your JavaScript calls to this page:

// Release 0:

var release0Div = document.getElementById("release-0");
release0Div.setAttribute("class", "done");


// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:

var h1 = document.getElementsByTagName("H1");
h1[0].innerHTML = "I completed release 2";


// Release 3:
// Add the background color #955251 to the #release-3 div.
document.getElementById("release-3").style.background = "#955251";


// Release 4:
// Select all occurrences of class .release-4 and change the text-size to 2em.

var r4 = document.getElementsByClassName("release-4");
for (var i = 0; i < r4.length; i++) {
    r4[i].style.fontSize = "2em";
}


// Release 5:
// Take the HTML in the template.hidden and append it to the bottom of the page.
var r5 = document.getElementById("hidden");
document.body.appendChild(r5.content);
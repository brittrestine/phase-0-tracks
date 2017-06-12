console.log("This is running corret!")

var newHeading = document.createElement('h1');

var h1Text = document.createTextNode("Octopus!!")

newHeading.appendChild(h1Text);

var firstHeading = document.getElementById('firstHeading');

firstHeading.appendChild(newHeading);

var parent = firstHeading.parentNode;
parent.insertBefore(h1Text, firstHeading);



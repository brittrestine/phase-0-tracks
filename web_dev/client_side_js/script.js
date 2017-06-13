console.log("This is running corret!")

//**created a new HTML Element with JS**

var newHeading = document.createElement('h1');

var h1Text = document.createTextNode("Octopus!!")

newHeading.appendChild(h1Text);

var firstHeading = document.getElementById('firstHeading');

firstHeading.appendChild(newHeading);

var parent = firstHeading.parentNode;
parent.insertBefore(h1Text, firstHeading);

//********** Add Event Listener ********
function octopus(){
var photo = document.getElementById("Octopus-photo");
  photo.style.backgroundColor = 'lightblue';
  var paragraph = document.getElementsByTagName('P');
  var paragraph = paragraph[0]
  paragraph.style.textShadow = "2px 2px 8px #FF0000";
  paragraph.style.fontFamily = "Brush Script Std, Brush Script MT, cursive";
}

var button = document.getElementById('button');

button.addEventListener("click", octopus);
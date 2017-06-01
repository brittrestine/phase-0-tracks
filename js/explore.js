// Create a function called reverse
  // Take a string in as the argument
  // For each index in the string (1,2,3,4) count down (4,3,2,1)
    // Store the new arrangment in a variable and return that variable
  // print the reversed string to the console from the driver code

function reverse(str){
  var reversestr = "";
  for (var s = str.length -1; s >= 0; s--)
    reversestr += str[s];
  return reversestr;
}



reverse("hello");
var reversestr = reverse("hello");

if (1 == 1) {
  console.log(reversestr);
}


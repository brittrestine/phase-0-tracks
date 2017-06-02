//Pseudocode for printlongest function
// Create a longest word in array method
  // This method will take in a array of strings or phrases as an argument
  // look through that array at every word or pharse
  // compare the word lengths of each one
  // the largest word or phrase should be returned

/*
function printlongest(arr){

var lgth = 0;
var longest;

for(var i = 0; i < arr.length; i++){
  var eachword = arr[i];
    if(eachword.length > lgth){
      var lgth = eachword.length;
      longest = eachword;
    }
}
console.log(longest);
}
*/

// Pseudocode for compare
//Create a function that takes in two key-value pairs
  //first compare the keys. Call both of the keys.
    //if they are equal to one another then the return should be true.
    //if they are not equal the return should be false.
  // Second campare the values.
    //Call both of the values. I
    //If they are equal to one another then return should be true.
    //If they are not equal to one another then the return should be false
/*
    function compare(kv1, kv2) {
      if (kv1.name == kv2.name) {
        console.log(true);
      } else if (kv1.age == kv2.age) {
        console.log(true);
      }  else if (kv1.name != kv2.name) {
        console.log(false);
      } else if (kv1.age != kv2.age) {
        console.log(false);
      }
    }
*/

//***************driver code**********************

/* printlongest function driver code,

var arr = ["I like ice cream", "Yes I do", "yepper"];

printlongest(arr);
*/

/* compare driver code,

var ryan = {name: "ryan", age: 29};

var britt = {name: "britt", age: 29};

compare(ryan, britt);
*/


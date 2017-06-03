//**************** RELEASE 0 **********************

//Pseudocode for printlongest function
// Create a printlongest function
  // This function will take in a array of strings or phrases as an argument
  // look through that array at every word or pharse
  // compare the word lengths of each one
  // the largest word or phrase should be returned

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

//******************** RELEASE 1 ******************//
// Pseudocode for compare
//Create a function that takes in two key-value pairs
  //first compare the keys. Call both of the keys.
    //if they are equal to one another then the return should be true.
    //if they are not equal the return should be false.
  // Second campare the values.
    //Call both of the values.
    //If they are equal to one another then return should be true.
    //If they are not equal to one another then the return should be false

/*** first example of how to compare values of two objects... both examples run perfectly.

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

  //*** second example of how to campare the values of two objects

    function compare(ryan, britt){
      if (ryan[Object.keys(ryan)[0]] == britt[object.keys (britt)[0]]) {
      console.log(true);
      } else if (ryan[Object.keys(ryan)[1]] == britt[Object.keys(britt)[1]]) {
      console.log(true);
      } else if (ryan[Object.keys(ryan)[0]] != britt[Object.keys (britt)[0]]) {
      console.log(false);
      } else if (ryan[Object.keys(ryan)[1]] != britt[Object.keys (britt)[1]]) {
      console.log(false);
    }
}
*/
//******************** RELEASE 2 ******************

// Pseudocode for newarray function
// Create a function that takes in a integer for the length of the array being built
  // use that integer to loop through a word array
  // push though random words into an empty array and return that array.

/*** first example (prints great), but I reread the challenge and I think I was asking for something a little different then this function.

  function newarray(num) {

    var words = ["cat", "house", "brittany", "misslizard"];
    var pick;
    var newarray = []

    for (var i = num; i >= 0; i--) {
      pick = words[Math.floor(Math.random() * words.length)];
      newarray.push(pick);
    }
    return newarray
  }
*/

//Pseudocode for newword function
  // Create a function thet takes a integer as a argument
    // Use that integer to loop through ...
      // create a loop that generates a random number, inside that loop...
        //create a new word by looking through the alphebet and randomly pick letters, the number of letters is determained by the 'generate a random number loop'.
        //push that new word to an array. How many words pushed to the array will be determinded by the first loop with the integer argument.
        // print the array of new words

//** Seconde example, I Think this is what they were looking for in the challenge

function newwords(num){
  var myarr = [];
  var text = "";
  var possible = "abcdefghijklmnopqrstuvwxyz";

  for (var n = num; n > 0; n--){
   for (var i = 0; i < Math.floor(Math.random() * 10 + 1); i++){
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
   myarr.push(text);
  }
   return myarr;
}

//***************driver code**********************

/**************************************************
printlongest function driver code,

var arr = ["I like ice cream", "Yes I do", "yepper"];

printlongest(arr);
*************************************************/

/**************************************************
compare function driver code,

var ryan = {name: "ryan", age: 29};

var britt = {name: "britt", age: 29};

compare(ryan, britt);
**************************************************/

// newarray and printlongest function driver code,

printlongest(newwords(2));


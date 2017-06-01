// Create a longest word in array method
  // This method will take in a array of strings or phrases as an argument
  // look through that array at every word or pharse
  // compare the word lengths of each one
  // the largest word or phrase should be returned

function long(arr){

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
var arr = ["I like ice cream", "Yes I do", "yepper"];

long(arr);
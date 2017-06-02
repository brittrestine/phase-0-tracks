/*
var horse = ["candy", "noname", "champ", "snowball"];

var color = ["red", "blue", "green", "yellow"];

horse.push("flapjack");

color.push("purple");

console.log(horse);

console.log(color);

var myobj = {};

for (var i = 0; horse.length > i; i++){
for (var i = 0; color.length > i; i++){
  var horses = horse[i];
  var colors = color[i];
    myobj[horses] = colors;
  }
}

console.log(myobj);
*/

//var car = {model: valiant, year: 1968, color: tan};

function Car(make, year, color) {

  console.log("Our new car:", this);

  this.make = make;
  this.year = year;
  this.color = color;

  this.running = function() {console.log("vroom");};

  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Lets build a car...");
var anotherCar = new Car("Valiant", 1968, "tan");
console.log(anotherCar);
console.log("This car is running:");
anotherCar.running();
console.log("-------------")

console.log("lets build another car...");
var yetanotherCar = new Car("Dodge", 2008, "red");
console.log(yetanotherCar);
console.log("This car is running:");
yetanotherCar.running();
console.log("-------------")

console.log("lets build another car...");
var yetyetanotherCar = new Car("Volvo", 2001, "gren");
console.log(yetyetanotherCar);
console.log("This car is running:");
yetyetanotherCar.running();
console.log("-------------")


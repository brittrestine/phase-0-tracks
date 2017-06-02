

var horse = ["candy", "noname", "champ", "snowball"];

var color = ["red", "blue", "green", "yellow"];

horse.push("flapjack");

color.push("purple");

//console.log(horse);

//console.log(color);

var myobj = {};

for (var i = 0; horse.length > i; i++){
for (var i = 0; color.length > i; i++){
  var horses = horse[i];
  var colors = color[i];
    myobj[horses] = colors;
  }
}


console.log(myobj);

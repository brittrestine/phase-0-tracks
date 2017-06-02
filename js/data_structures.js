

var horse = ["candy", "noname", "champ", "snowball"];

var color = ["red", "blue", "green", "yellow"];

horse.push("flapjack");

color.push("purple");

//console.log(horse);

//console.log(color);

var myobj = {};

for (var i = 0; horse.length > i; i++){
    myobj[horse[i]] = color[i];
  }


console.log(myobj);

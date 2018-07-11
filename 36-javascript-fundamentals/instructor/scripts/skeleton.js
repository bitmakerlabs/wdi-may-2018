// Numbers
// apples += 1;
// console.log(apples);
var apples = 5;
var debt = 50.75;
var moneyIOwe = -50.75;

console.log(apples + 7);
var oranges = 3;
var sum = apples + oranges;




// Strings
var result = "Hello everybody.";
console.log(result);
var message = "Hello wo\nrld!";
console.log(message);
var name = 'Dan\niel';

// Goal: I have 5 apples
var sentence = "I have " + apples + "apples.";
console.log(sentence);

var greeting = "He said, 'hello!'";


// Booleans (True and False)
var iDidIt = true;
var goodIdea = false;



// undefined
var muscles = undefined;
console.log(muscles);
muscles = 'super buff';
console.log(muscles);
muscles = 3000;
console.log(muscles);

var muscles;
muscles = 'super buff';

// null
var knowledge = null;
console.log(knowledge);


// Arrays
var items = ['shoe', 'hat', 'glove'];
console.log(items);

console.log(items[1]);
items.push('coat');
console.log(items);

items[2] = 'new thing';
console.log(items);
items.splice(1, 2, 'wallet');
console.log(items);
console.log(items.slice(1, 2));

var output = items.join(', ');
console.log(output);
console.log(items.length);



// Object Literals
var person = {
  'name': 'Sally',
  'age': 25,
  inSchool: false,
  'weird key': 'hello',
  25: 'age',

  house: {
    windows: 8,
    floors: 2,
    address: '555 address drive',
  },

  speak: function() {
    console.log('Hello!');
  },

};

console.log(person);
person['name']
console.log(person['name']);

person.name
console.log(person.name);


person.speak();
console.log(person.house.windows);
console.log(person['house']['windows']);
console.log(person['weird key']);

var attribute = 'name';
console.log(person.attribute);
console.log(person[attribute]);
console.log(typeof person);

// console.log(person['name']);




// If Statement
if (4 == 5) {
  // conditional code goes here
  console.log('It worked!');
} else if (true) {
  console.log('Else if fired');
} else {
  console.log('else fired');
}



// For Loop
for (var i = 20; i >= 10; i -= 2) {
  console.log(i);
}

var people = ['Jan', 'Suzie', 'Ryan', 'Daniel'];
for (var index = 0; index < people.length; index++) {
  var name = people[index];
  console.log(name);
}
console.log('----');

for (var i = people.length - 1; i >= 0; i--) {
  console.log(people[i]);
}
console.log(i);



// While Loop
var counter = 5;
while (counter * 2 < 15) {
  console.log(counter);
  counter++;
}



// Do/While Loop
// do {
//
// } while ()



// Named function
function hello() {
  console.log('Say hello!');
}
console.log(hello);
// DON'T DO THIS, BUT IT'S COOL
// hello.age = 44;
// console.log(hello.age);

// Functions with parameters
function greet(nameOfPerson, personTalking) {
  console.log("Hello, " + nameOfPerson + "! - " + personTalking);
  return 555;
}

def doStuff() {
  return [1, 2, 3]
}

greet('Sandra');
greet();
greet('Mario', 'Harry');
console.log(greet);
console.log(greet('Mario', 'Harry'));
// greet()



// Anonymous function



// Callback



// Scope examples -------------------



// Callbacks --------------------------



// forEach callback



// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------




// asynchronous JS

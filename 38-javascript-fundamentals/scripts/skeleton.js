'use strict';

// Numbers
var num = 5;
var decimal = 3.6;


// Strings
var name = "Daniel";
var other = 'April';



// Booleans (True and False)
var wantToGo = true;
var dontLeaveMe = false;


// undefined
var isThisAThing = undefined;
var happy;
happy = true;


// null
var isAnythingHere = null;


// Arrays
var things = ['string', 5, true];
// puts('something')
console.log(things[0]);
// things[1]
things.push('new thing');
console.log(things);



// Object Literals
var person = {
  'name': "Joe",
  'age': 35,
  'attributes': {
    'cool': 'awesome',
  }
};

console.log(person);
person['name'];
person['name'] = 'Sarah';
console.log(person);

person['attributes']['cool']
console.log(person.attributes.cool);


// global1 = 5;
// global2 = 10;
//
// test = 7;

// For Loop
for (var index = 1; index <= 10; index++) {
  console.log(index);
}

for (var i = 20; i >= 12; i -= 2) {
  console.log(i);
}

console.log('-------');

var clothes = ['shirt', 'shorts', 'hat', 'trousers'];
console.log(clothes.length);

for (var i = 0; i < clothes.length; i++) {
  var clothing = clothes[i];
  console.log(i);
  console.log(clothing);
}


// While Loop
// while (true) {
  // console.log('still running');
  // break;
// }



// Do/While Loop



// If Statement

// if true
//   console.log("it was true");
// end

if (false) {
  console.log("it was true");

} else if (true) {
  console.log('in else if');

} else {
  console.log('logging else now');
}



// Named function
function doStuff() {
  console.log('in doStuff');
}

doStuff();
doStuff();
doStuff();


// Functions with parameters
function greet(name) {
  if (name === undefined) {
    console.log("Hello! Please submit your name.");
  } else {
    console.log("Hello, " + name);
  }
}
greet('Jeremy');
greet('Louise');
greet();

console.log(greet);




// Anonymous function

var myFunctionVariable = function() {
  console.log("logging out inside anonymous function");
}
myFunctionVariable();





// Callback



// Scope examples -------------------
var x = 5;
console.log(x);

function print() {
  var insideVar = 'test';
  console.log(x);
  var globalVar = 'this is global';

  function other() {
    console.log(x);
    console.log(insideVar);

  }
}

print();
// console.log(globalVar);

// greet(function() {});

function add(num1, num2) {
  return num1 + num2;
}

var num = add(4, 7);
console.log(num);
add(4, 6);



// Callbacks --------------------------
function makeBurger(instructionsToAddPatty, instructionsToAddToppings) {
  console.log('  --------');
  instructionsToAddToppings();
  instructionsToAddPatty();
  console.log('  --------');

  console.log();
  console.log();
}

function addPatty() {
  console.log('============');
}

function addHugePatty() {
  console.log('////////////');
}

function addLettuce() {
  console.log('SSSSS');
}

function addBLT() {
  console.log('- - -');
  addLettuce();
  console.log('____');
}

makeBurger(addPatty, addLettuce);
makeBurger(addHugePatty, addBLT);
makeBurger(addPatty, function() {  });



// forEach callback



// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------




// asynchronous JS

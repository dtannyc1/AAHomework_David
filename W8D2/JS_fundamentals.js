function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';
      console.log(x);
    }
    console.log(x);  // x is permanently redefined after line 4
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';
      console.log(x);
    }
    console.log(x);  // works fine, prints in block, out of block
}

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      //var x = 'in block'; // cannot redeclare const x
      console.log(x);
    }
    console.log(x);
}

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';
      console.log(x);
    }
    console.log(x); // works correctly, prints in block, out of block
}

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';
      console.log(x);
    }
    //let x = 'out of block again';  // cannot redeclare x in the same scope
    console.log(x);
}


function madLib(verb, adjective, noun) {
    return "We shall " + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase();
}

console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
    return searchString.indexOf(subString) !== -1;
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
    var output = []
    array.forEach((el) => {
        if (el % 3 === 0 && el % 5 !== 0) {
            output.push(el);
        } else if (el % 5 === 0 && el % 3 !== 0) {
            output.push(el);
        }

    });
    return output;
}

console.log(fizzBuzz([3, 6, 5, 8, 10, 15]));

function isPrime(number) {
    for (i = 2; i < number; i++) {
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

function sumOfNPrimes(n) {
    var firstNPrimes = [];
    var sum = 0;
    var i = 2;
    while (firstNPrimes.length < n) {
        if (isPrime(i)) {
            firstNPrimes.push(i);
            sum += i;
        }
        i++;
    }
    return sum;
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));

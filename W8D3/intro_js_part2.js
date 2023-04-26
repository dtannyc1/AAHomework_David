//------------------------------------------------------------------------------
const titleize = function(arr, callback) {
    let newArr = arr.map(el => "Mx. " + el + " Jingleheimer Schmidt");
    callback(newArr);
};

const printCallback = function(arr) {
    arr.forEach(el => console.log(el));
};

//------------------------------------------------------------------------------
const Elephant = function (name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
};

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRRR!!!!!!!!!!!!'`)
}

Elephant.prototype.grow = function () {
    this.height += 12;
}

Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick)
}

Elephant.prototype.play = function () {
    let num = Math.floor(Math.random() * (this.tricks.length));
    console.log(`${this.name} is ${this.tricks[num]}!`)
}

//------------------------------------------------------------------------------

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
    console.log(`${elephant.name} is trotting by!`)
}

Elephant.paradeHelper(micah);

herd.forEach(Elephant.paradeHelper);

//------------------------------------------------------------------------------
const dinerBreakfast = function () {
    let order = ["cheesy scrambled eggs"];

    console.log(`I'd like ${order.join(" and ")} please.`);
    return (meal) => {
        order.push(meal);
        console.log(`I'd like ${order.join(" and ")} please.`);
    };
};

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");

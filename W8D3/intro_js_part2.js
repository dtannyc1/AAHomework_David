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

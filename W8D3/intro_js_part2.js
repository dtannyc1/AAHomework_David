//------------------------------------------------------------------------------
const titleize = function(arr, callback) {
    let newArr = arr.map(el => "Mx. " + el + " Jingleheimer Schmidt");
    callback(newArr);
};

const printCallback = function(arr) {
    arr.forEach(el => console.log(el));
};

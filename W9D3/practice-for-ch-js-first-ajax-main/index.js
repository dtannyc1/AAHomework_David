console.log("Hello from the console!");

// Your code here

fetch('https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b')
    .then((response) => {
        if (response.ok) {
            return response.json();
        } else {
            throw new Error(response);
        }
    })
    .then((successResponse) => {
        console.log("Success!")
        console.log(successResponse);
    }, (failureResponse) => {
        console.log("Failure!");
        console.log(failureResponse);
    })

console.log('The AJAX request has been dispatched');

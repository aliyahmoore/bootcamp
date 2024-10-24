var API_KEY = '250dea5532384bf049aea21375f7f435'; 

$(function () {
    $('#search').click(function() {
    var location = $('#location').val()

})



// $(document).ready(function() {
//     $('#search').click(function() {
//         const isZipCode = /^\d+$/.test(location); //test true or false statement red x and .test for zipcodes
//         var queryURL 
        
//         if(isZipCode) {
//             quereyURL = ''
//         }
        
//         if (location) {
//             getWeather(location);
//         } else {
//             $('#error-message').text('Please enter a location.'); // Error message if input is empty
//         }
//     });

//stretch goal:
//created two variables
//add to if/else statement the url 
//ajax request update 
//add a div 
//for loop 
//filter through the dt_text
//for each is similar to . each
//grab date temp, everything before and push


    function getWeather(location) {
        // Determine if the input is a ZIP code or city name using isNaN
        var URL;
        if (isNaN(location)) {
            // If not a number, treat as city name
            URL = "https://api.openweathermap.org/data/2.5/weather?q=" + location + "&appid=" + API_KEY + "&units=imperial"; // Fahrenheit
        } else {
            // If it is a number, treat as ZIP code
            URL = "https://api.openweathermap.org/data/2.5/weather?zip=" + location + "&appid=" + API_KEY + "&units=imperial"; // Fahrenheit
        }

        $.ajax({
            url: URL,
            method: 'GET',
            success: function(data) {
                displayWeather(data);
                $('#error-message').empty(); // Clear previous error message
            },
            error: function(jqXHR) {
                if (jqXHR.status === 404) {
                    $('#error-message').text('Location not found. Please try again.');
                } else if (jqXHR.status === 401) {
                    $('#error-message').text('Invalid API key. Please check your key and try again.');
                } else {
                    $('#error-message').text('Network error. Please try again later.');
                }
                $('#weather-info').empty(); // Clear previous weather info
            }
        });
    }

            

    function displayWeather(data) {
        const temperature = data.main.temp; // Temperature in Fahrenheit
        const weather = data.weather[0].main; 
        const conditions = data.weather[0].description;
        const humidity = data.main.humidity;
        const windSpeed = data.wind.speed;

        const result = `
            <h2>Weather in ${data.name}</h2>
            <p>Temperature: ${temperature} °F</p> <!-- Display in Fahrenheit -->
            <p>Weather: ${weather}</p>
            <p>Conditions: ${conditions}</p>
            <p>Humidity: ${humidity}%</p>
            <p>Wind Speed: ${windSpeed} m/s</p>
        `;

        $('#weather-info').html(result);
    }
});

var API_KEY ='6c4c402d';

var movieForm = document.getElementById("movie-form");
var movieList = document.getElementById("movie-list");
var movieList = document.getElementById("movie-data");

// Load stored movies from localStorage when the page loads
document.addEventListener('DOMContentLoaded', loadMovies);

// Add event listener for form submission
movieForm.addEventListener('submit', function(event) {
    event.preventDefault();
    var title = document.getElementById('title').value();
    if (!title) {
        alert("Please enter a movie title.");
        return;
    }
    fetchMovieData(title);
});

function fetchMovieData(title) {
    $.ajax({
        url: `https://api.themoviedb.org/3/search/movie`,
        method: 'GET',
        data: {
            api_key: API_KEY,
            query: title
        },
        success: function(data) {
            if (data.results.length > 0) {
                const movie = data.results[0];
                displayMovieData(movie);
                saveMovie({
                    title: movie.title,
                    genre: movie.genre_ids.join(', '),
                    year: new Date(movie.release_date).getFullYear()
                });
            } else {
                movieDataDiv.innerHTML = '<p>Movie not found.</p>';
            }
        },
        error: function(xhr, status, error) {
            console.error("Error fetching movie data:", error);
            movieDataDiv.innerHTML = '<p>An error occurred while fetching movie data.</p>';
        }
    });
}

function displayMovieData(movie) {
    movieDataDiv.innerHTML = `
        <h3>${movie.title} (${new Date(movie.release_date).getFullYear()})</h3>
        <p>Genre:${movie.genre_ids.join(', ')}</p>
        <p>Overview:${movie.overview}</p>
    `;
}

function loadMovies() {
    const movies = JSON.parse(localStorage.getItem('movies')) || [];
    movies.forEach(addMovieToList);
}

function addMovieToList(movie) {
    const li = document.createElement('li');
    li.textContent = `${movie.title} - ${movie.genre} (${movie.year})`;
    movieList.appendChild(li);
}

function saveMovie(movie) {
    let movies = JSON.parse(localStorage.getItem('movies')) || [];
    movies.push(movie);
    localStorage.setItem('movies', JSON.stringify(movies));
}


function displayStoredMovies() {
    const movies = JSON.parse(localStorage.getItem('movies')) || [];
    movieList.innerHTML = ''; // Clear current list
    for (const index in movies) {
        const movie = movies[index];
        addMovieToList(movie);
    }
}


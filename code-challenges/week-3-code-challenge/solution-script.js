$(fucntion () {
    //add click function and logic for ajax request here do not forget to hide api key

    $('movie-form').on('submit, function (event)
        event.preventDefault();

        //get form values
        const title = $('#title').val();
        const genre = $('#genre').val();
        const year = $('#year').val();

        //create movie object
        const movie = { title, genre, year };
        
})

let movies = JSON.parse(localStorage.movies)
//get movies from localStorage
if(localStorage.getItem('movies')){
    movies = JSON.parse(localStorage.movies);
}else{
    let movies = [];
}
//push the object
movies.push(movie);

//stringify to store
///store the updates movies array back to localStorage use SetItem to store an item 
localStorage.setItem('moovies', JSON.stringify(movies));

//clear the form inputs
$("#movie-form")[0].reset();

//to display the movies
displayMovies();

});

function displayMovies(){
    const movieList = $('#movie-list');
    movieList.empty(); //cllear the list

    //get movies from localStorage
    let movies = JSON.parse(LOCALsTORAGE.GETItem('movies')) || [];

    use for/in loop to iterate over movies and display each one

    for(let index in movies){
        let movie = moies[index];
        let listItem = $('<li></li>').text(${movie.title} (${movie.genre}, ${movie.year}))
        movieList.append(listItem);
    }
    
    const apiKey = ''
    var URL = 
    
    $('#search-btn').click(function(){
        var movie = $('#search-movie').val()
    }
  
    //ajax request
    function fetchMovieData(title) {
        $.ajax({
            url: `https://api.themoviedb.org/3/search/movie`,
            method: 'GET',
            success: function(data) {
                if (data.Response === "True"){
                    const movieInfo = 
                    <h3> </h3>
                }

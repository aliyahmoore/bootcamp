const books = {
    book1: { title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Fiction" },
    book2: { title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Fiction" },
    book3: { title: "1984", author: "George Orwell", genre: "Science Fiction" },
    book4: { title: "Pride and Prejudice", author: "Jane Austen", genre: "Fiction" },
    book5: { title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy" }
};
$(document).ready(function() {
    // follow the instructions provided in the README to solve this
    $("#countBooksButton").click(function(){
        const selectedGenre = $("#genreSelector").val();
        console.log(selectedGenre);
        //.val value gets the valiue of the method that is selected is a method in jQuerey 
        const resultElement = $("#result");
        // const bookCount = countBooksByGenre(books, selectedGenre);
        var count = 0;
        for(var book in books){
            if(books[book].genre === selectedGenre){ //=== extra check
                count++
            }
        }
        resultElement.text(`Number of, ${selectedGenre} books: ${count}`);
    })
});
// Your code here!
//books = object
//book = key 

//function countBooksByGenre(books, genre){ //arguments 2
  //  var = 0;
   //     focus(var book in books){
   //         if(books[book].genre === selectedGenre){ //=== extra check
    //            count++
   //         }
    //    }
    //return count;
    //return click function
    //object = student house
    //key = student (variable/value)
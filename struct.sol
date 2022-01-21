//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract learnStruct {

  struct Movie {
    string director;
    string movieTitle;
    uint movie_id;
  }

//Movie is datatype != movie is a variable
  Movie movie;
  Movie comedy;

  function setMovie() public {
    //movie = Movie("Blade Runner", "Ridley Scott", 1);
    //movie = Movie("Lost In Translation", "Sophia Coppola", 2);
    comedy = Movie("LOL", "funny director", 3);
  }

  function getMovieId() public view returns (uint) {
      return comedy.movie_id;
  }
}

//1. create a new movie and set it up so that it updates to the movie in the setMovie function
//2. return the id of the new movie
//3. create a new var called comedy and set up comedy to the datatype Movie
//4. update the setMovie function with a comedy movie that contain name, director and an Id
//5. return the movie id of comedy 

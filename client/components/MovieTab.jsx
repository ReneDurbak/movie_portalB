import { useState ,useEffect } from 'react';
 

const MovieComponent = (props) => {
  const [movies, setMovies] = useState([]);

  console.log(props.value)

  useEffect(() => {
    getMovies()
      .then(movies => {
        setMovies(movies);
      })
      .catch(error => {
        console.error('Error fetching movies:', error);
      });
  }, []);

  const getMovies = async () => {
    try {
      // Fetch movies from an API or any other data source
      const response = await fetch('http://localhost:5000/movies');
      const data = await response.json();
      return data; // Assuming the response contains a "movies" property with the list of movies
    } catch (error) {
      throw new Error('Failed to fetch movies');
    }
  };

  return (
    <>
      {movies.map(movie => (
          <div className="movie-card" key={movie.movie_id}>
            <div className="movie">
              <div className="image">
                <img src={movie.imageurl} alt="Deadpool poster" height="300px" width="240px" />
              </div>
              <div className="movie-title">{movie.title_movie}</div>
              <div className="info">
                <div className="main-text">Release year:</div>
                <div className="text">{movie.year}</div>
                <div className="main-text">Genre:</div>
                <div className="text">{movie.title_genre}</div>
              </div>
            </div>
          </div>
      ))}
    </>
  );
};

export default MovieComponent;

import React, { useEffect, useState } from 'react';
import Popup from 'reactjs-popup';

const MovieComponent = () => {
  const [movies, setMovies] = useState([]);

  const [summary, setSummary] = useState("");
  const summaryChange = (event) => setSummary(event.target.value)

  const [genre_id, setGenre_id] = useState(1);
  const genre_idChange = (event) => setGenre_id(event.target.value)

  const [year, setYear] = useState(0);
  const yeardChange = (event) => setYear(event.target.value)

  const [title_movie, setTitle_movie] = useState("");
  const title_movieChange = (event) => setTitle_movie(event.target.value)

  const [imageurl, setImageurl] = useState("");
  const imageurlChange = (event) => setImageurl(event.target.value)

  useEffect(() => {
    getMovies()
      .then(movies => {
        setMovies(movies);
      })
      .catch(error => {
        console.error(error);
      });
  }, []);

  const getMovies = async () => {
    try {
      const response = await fetch('http://localhost:5000/movies');
      const data = await response.json();
      console.log(data);
      return data;
    } catch (error) {
      throw new Error('Failed to fetch movies');
    }
  };

  const updateMovie = async (id) => {
    try {
        const body = {
            "genre_id": genre_id,
            "title_movie": title_movie, 
            "year": year,
            "summary": summary,
            "imageurl": imageurl
        }
        const response = await fetch(`http://localhost:5000/movies/${id}`,{
        method: "PUT",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(body)
        
      });
      console.log(response);
      getMovies()
      .then(movies => {
        setMovies(movies);
      })
    } catch (error) {
        console.error(error.message);
    }
  };

  const deleteMovie = async (id) => {
    try {
      fetch(`http://localhost:5000/movies/${id}`,{
      method: "DELETE"
      })
      getMovies()
      .then(movies => {
        setMovies(movies);
      })
    } catch (error) {
        console.error(error);
    }
    
  };
  //onClick={()=> deleteMovie(movie.movie_id)}

  return (
    <>
      {movies.map(movie => (
            <div className="movie-card" key={movie.movie_id} >
              <div className="movie">
                <div className="image">
                  <img src={movie.imageurl} alt={movie.title_movie} height="330px" width="240px" />
                </div>
                <div className="movie-title">{movie.title_movie}</div>
                <div className="info">
                  <div className="main-text">Release year:</div>
                  <div className="text">{movie.year}</div>
                  <div className="main-text">Genre:</div>
                  <div className="text">{movie.title_genre}</div>
                </div>
                <div className='delete' onClick={()=> deleteMovie(movie.movie_id)}><i className="gg-trash"></i></div>

                <Popup className="popup" trigger=
                {<div className="edit" ><i className="fa fa-edit" id='fa-edit'></i></div>}
                modal nested>
                {
                    close => (
                        <div className='modal'>
                            <h2>Type a movie title:</h2>
                            <input placeholder={movie.title_movie} type="text" onChange={title_movieChange}></input><br></br>
                            <h2>Type release year of the movie:</h2>
                            <input placeholder={movie.year} type="number" onChange={yeardChange}></input><br></br>
                            <h2>Select movie genre({movie.title_genre}):</h2>
                            <select name="genre" onChange={genre_idChange}>
                                <option value="1">action</option>
                                <option value="2">adventure</option>
                                <option value="3">comedy</option>
                                <option value="4">fantasy</option>
                                <option value="5">drama</option>
                            </select><br></br>
                            <h2>Write a summary of the movie:</h2>
                            <textarea rows="10" placeholder={movie.summary} onChange={summaryChange}></textarea><br></br>
                            <h2>Paste image url of the movie:</h2>
                            <input placeholder={movie.imageurl} type="url" onChange={imageurlChange}></input><br></br>
                            <button className='add' onClick={()=>{updateMovie(movie.movie_id);close();}}>Add</button>
                            <button className='cancel' onClick={() => {close();}}>Cancel</button>
                        </div>
                    )
                }
            </Popup>

                
              </div>
            </div>
      ))}
      
    </>
  );
};

export default MovieComponent;

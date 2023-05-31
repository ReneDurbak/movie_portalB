import './css/style.css';

//components
import MovieTab from '../components/MovieTab.jsx';

import React, {Fragment, useState, useEffect} from "react";


 function App() {

  //console.log(getMovies())
  const [movie, setMovie] = useState("");
  const [movies, setMovies] = useState([]);
  


useEffect(()=>{

    async function fetchData(){
        try{
            const response = await fetch(`http://localhost:5000/movies`);
            const parseResponse = await response.json();
        
            setMovies(parseResponse);
            
            console.log(parseResponse)
        }catch(error) {
            console.error(error.message);
        }
    }
    fetchData();

},[]);
 

  const onSubmitForm = async(e) => {
    e.preventDefault();
    try{
        const response = await fetch(`http://localhost:5000/movies/search?term=${movie}`);
        const parseResponse = await response.json();

        setMovies(parseResponse);
        
        console.log(parseResponse)
    }catch(error) {
        console.error(error.message);
    }
  }

    
  return (
    
    <>
    <header>
        <div className="web-title">MovieVerse</div>
        <div className="head">
            <form className="d-flex" onSubmit={onSubmitForm}>
            <input type="text" name="Search" placeholder="Search..." value={movie} onChange={e => setMovie(e.target.value)}/>
            <button className="btn btn-success">Submit</button>
            </form>
            <div className="filters">
                <select name="year-from" id="year">
                    <option value>Select year from</option>
                    <option value="1">from 2015</option>
                    <option value="2">from 2016</option>
                    <option value="3">from 2017</option>
                    <option value="4">from 2018</option>
                    <option value="5">from 2019</option>
                    <option value="6">from 2020</option>
                    <option value="7">from 2021</option>
                    <option value="8">from 2022</option>
                    <option value="9">from 2023</option>
                </select>
                <select name="year-to" id="year">
                    <option value>Select year to</option>
                    <option value="1">to 2015</option>
                    <option value="2">to 2016</option>
                    <option value="3">to 2017</option>
                    <option value="4">to 2018</option>
                    <option value="5">to 2019</option>
                    <option value="6">to 2020</option>
                    <option value="7">to 2021</option>
                    <option value="8">to 2022</option>
                    <option value="9">to 2023</option>
                </select>
                <select name="genre" id="genre">
                    <option value>Select genre</option>
                    <option value="1">action</option>
                    <option value="2">comedy</option>
                    <option value="3">fantasy</option>
                    <option value="4">romance</option>
                    <option value="5">animation</option>
                    <option value="6">crime</option>
                    <option value="7">drama</option>
                    <option value="8">horror</option>
                    <option value="9">thriller</option>
                </select>
            </div>
        </div>
    </header>
    <main>
        <div className="flex-container">
        {movies.map(movie => (
          <div className="movie-card" key={movie.movie_id}>
            <div className="movie">
              <div className="image">
                <img src={movie.imageurl} alt="Deadpool poster" height="315px" width="240px" />
              </div>
              <div className="movie-title">{movie.title_movie}</div>
              <div className="info">
                <div className="main-text" align="center">Release year:</div>
                <div className="text" align="center">{movie.year}</div>
                <div className="main-text" align="center">Genre:</div>
                <div className="text" align="center">{movie.title_genre}</div>
              </div>
            </div>
          </div>
      ))}
        </div>
    </main>
    <footer>
        Made by FilmCodeGurus &copy;2023
    </footer>
    </>
  )
}
export default App;


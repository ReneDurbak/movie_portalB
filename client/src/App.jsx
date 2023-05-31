import './css/style.css';
import { useState } from 'react';
import { MultiSelect } from "react-multi-select-component";
//components
import MovieTab from '../components/MovieTab.jsx';
import Popup from 'reactjs-popup';

const options = [
    { label: 'Action', value:1 },
    { label: 'Adventure',value:2 },
    { label: 'Comedy',value:3},
    { label: 'Fantasy',value:4},
    { label: 'Drama',value:5},
    { label: 'Horror',value:6},
    { label: 'Thriller',value:7},
    { label: 'Sci-fi',value:8},
  
  ];




import React, {Fragment, useState, useEffect} from "react";


 function App() {
  //console.log(getMovies())
  const [selected, setSelected] = useState([]);
  const [movie, setMovie] = useState("");
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
  

  const addMovie = async () => {
      try {
          const body = {
              "genre_id": genre_id,
              "title_movie": title_movie, 
              "year": year,
              "summary": summary,
              "imageurl": imageurl
          }
          const response = await fetch('http://localhost:5000/movies',{
          method: "POST",
          headers: {"Content-Type": "application/json"},
          body: JSON.stringify(body) 
        });


        console.log(response);
      } catch (error) {
          console.error(error.message);
      }
    };
    const cleanFields = () =>{
      setGenre_id(1);
      setImageurl("");
      setSummary("");
      setTitle_movie("");
      setYear(2015);
    }

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
            <div className="search">
                <input type="text" placeholder="Search..." id="my-input"></input>
            <form className="d-flex" onSubmit={onSubmitForm}>
            <input type="text" name="Search" placeholder="Search..." value={movie} onChange={e => setMovie(e.target.value)}/>
            <button className="btn btn-success">Submit</button>
            </form>
            <div className="filters">
                <select name="year-from" id="year">
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
                    <option value="9">to 2023</option>
                    <option value="8">to 2022</option>
                    <option value="7">to 2021</option>
                    <option value="6">to 2020</option>
                    <option value="5">to 2019</option>
                    <option value="4">to 2018</option>
                    <option value="3">to 2017</option>
                    <option value="2">to 2016</option>
                    <option value="1">to 2015</option>
                </select>
              <div>
              <MultiSelect 
                    labelledBy='Genres' 
                    options={options}
                    value={selected}
                    onChange={setSelected}
                    className="multiselect-container"
                    />
         </div>

         <Popup className="popup" trigger=
                {<div className="add-movie" >Add movie</div>}
                modal nested>
                {
                    close => (
                        <div className='modal-add' id='modal'>
                            <h2>Type a movie title:</h2>
                            <input placeholder="Movie title" type="text" onChange={title_movieChange}></input><br></br>
                            <h2>Type release year of the movie:</h2>
                            <input placeholder="Release year" type="number" onChange={yeardChange}></input><br></br>
                            <h2>Select movie genre:</h2>
                            <select name="genre" onChange={genre_idChange}>
                                <option value="1">action</option>
                                <option value="2">adventure</option>
                                <option value="3">comedy</option>
                                <option value="4">fantasy</option>
                                <option value="5">drama</option>
                            </select><br></br>
                            <h2>Write a summary of the movie:</h2>
                            <textarea rows="10" placeholder="Movie description" onChange={summaryChange}></textarea><br></br>
                            <h2>Paste image url of the movie:</h2>
                            <input placeholder="Image url" type="url" onChange={imageurlChange}></input><br></br>
                            <button className='add' onClick={()=>{addMovie();cleanFields();close();}}>Add</button>
                            <button className='cancel' onClick={() => {cleanFields();close();}}>Cancel</button>
                        </div>
                    )
                }
            </Popup>
                
            </div>
            </div>
        </div>

      
    </header>
    <main>
        <div className="topFilm-section">
            <div className="popular-section">
                <div className="module-border-wrap"><div className="module">
                    <h3 className="popular-header-name">Most popular this month</h3>
                    <p>Month June</p>
                </div></div>

                <div className="popular-film">
                    <img src="https://static.wikia.nocookie.net/the-martian/images/5/52/The_Martian_poster_3.jpg" alt="" />                
                    <div className="film-info"> 
                        <div className="rank first">1</div>
                    </div>  
                </div>
                <div className="popular-film">
                    <img src="https://wallpapercave.com/wp/wp8213746.jpg" alt="" />  
                    <div className="film-info">          
                        <div className="rank second">2</div>
                    </div>  
                </div>
                <div className="popular-film">
                    <img src="https://www.dcplanet.fr/wp-content/uploads/2016/08/Suicide_Squad_Poster.jpg" alt="" /> 
                    <div className="film-info">             
                        <div className="rank third">3</div>
                    </div>  
                </div>
            </div>
        </div>
        <div className="flex-container">
            <MovieTab props = {selected}/>
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


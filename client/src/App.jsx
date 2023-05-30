import './css/style.css';

//components
import MovieTab from '../components/MovieTab.jsx';
import React, { useState } from 'react';
import Popup from 'reactjs-popup';

 function App() {
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
          // toto nejde neviem preco
          MovieTab.getMovies()
                .then(movies => {
                    MovieTab.setMovies(movies);
          })


          console.log(response);
        } catch (error) {
            console.error(error.message);
        }
      };


  return (
    <>
    <header>
        <div className="web-title">MovieVerse</div>
        <div className="head">
            <div className="search">
                <input type="text" placeholder="Search..." id="my-input"></input>
            </div>
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
        <Popup className="popup" trigger=
                {<div className="add-movie" >Add movie</div>}
                modal nested>
                {
                    close => (
                        <div className='modal'>
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
                            <button className='add' onClick={()=>{addMovie();close();}}>Add</button>
                            <button className='cancel' onClick={() => {close();}}>Cancel</button>
                        </div>
                    )
                }
            </Popup>
        
        
    </header>
    <main>
        <div className="flex-container">
            <MovieTab />
        </div>
    </main>
    <footer>
        Made by FilmCodeGurus &copy;2023
    </footer>
    </>
  )
}
export default App;


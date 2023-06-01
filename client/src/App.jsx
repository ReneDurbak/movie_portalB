import './css/style.css';
import React, {useState, useEffect} from "react";
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

 function App() {
  //console.log(getMovies())
  const [yearFrom, setYearFrom] =  useState(0);
  const [yearTo, setYearTo] =  useState(3000);

  const [refreshFlag, setRefreshFlag] = useState(true);

  const [selected, setSelected] = useState([]);
  const [movie, setMovie] = useState("");

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

        setRefreshFlag(!true);

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
    },[movie]);
    
     
    
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
            <form className="d-flex" onSubmit={onSubmitForm}>
            <input type="text" name="Search" id="my-input" placeholder="Search..." value={movie} onChange={e => setMovie(e.target.value)}/>
            </form>
            <div className="filters">
                <select name="year-from" id="year" onChange={(event)=>{setYearFrom(event.target.value)}}>
                    <option value="2015">from 2015</option>
                    <option value="2016">from 2016</option>
                    <option value="2017">from 2017</option>
                    <option value="2018">from 2018</option>
                    <option value="2019">from 2019</option>
                    <option value="2020">from 2020</option>
                    <option value="2021">from 2021</option>
                    <option value="2022">from 2022</option>
                    <option value="2023">from 2023</option>
                </select>
                <select name="year-to" id="year" onChange={(event)=>{setYearTo(event.target.value)}}>
                    <option value="2015">to 2015</option>
                    <option value="2016">to 2016</option>
                    <option value="2017">to 2017</option>
                    <option value="2018">to 2018</option>
                    <option value="2019">to 2019</option>
                    <option value="2020">to 2020</option>
                    <option value="2021">to 2021</option>
                    <option value="2022">to 2022</option>
                    <option value="2023">to 2023</option>
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
                            <textarea rows="7" placeholder="Movie description" onChange={summaryChange}></textarea><br></br>
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
            {<MovieTab props = {selected} search = {movie} yearTo = {yearTo} yearFrom = {yearFrom} refreshFlag={refreshFlag}/>}
        </div>
    </main>
    <footer>
        Made by FilmCodeGurus &copy;2023
    </footer>
    </>
  )
}



export default App;


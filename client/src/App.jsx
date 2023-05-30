import './css/style.css';
import { useState } from 'react';
//components
import MovieTab from '../components/MovieTab.jsx';

import { MultiSelect } from "react-multi-select-component";
const options = [
  { label: "action", value:1 },
  {   label: "comedy",value:2 },
  {  label: "fantasy",value:3},
];

 function App() {
  //console.log(getMovies())

    const [selected, setSelected] = useState([]);

    
    



  return (
    <>
    
    <header>
        <div className="web-title">MovieVerse</div>
        <div className="head">
            <div className="search">
                <input type="text" placeholder="Search..." id="my-input"></input>
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
                    />
         </div>
                
            </div>
            </div>
        </div>
    </header>
    <main>
        <div className="topFilm-section">
            <div className="popular-section">
                <div class="module-border-wrap"><div class="module">
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
            <MovieTab value={selected} />
        </div>
    </main>
    <footer>
        Made by FilmCodeGurus &copy;2023
    </footer>
    </>
  )
}



export default App;


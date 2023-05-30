import './css/style.css';
import { useState } from 'react';
import { MultiSelect } from "react-multi-select-component";
//components
import MovieTab from '../components/MovieTab.jsx';

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
        <div className="flex-container">
            <MovieTab props = {selected}/>
        </div>
    </main>
    <footer>
        Made by FilmCodeGurus &copy;2023
    </footer>
    </>
  )
}



export default App;


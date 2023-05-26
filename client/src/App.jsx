import './css/style.css';
import MovieTab from '../components/movieTab';

//components

function App() {

  //const [movies, setMovies] = useState(0);



 

  //console.log(getMovies())


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
    </header>
    <main>
        <MovieTab />
    </main>
    <footer>
        Made by Team B &copy;2023
    </footer>
    </>
  )
}
export default App;


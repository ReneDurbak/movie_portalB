import { useState, useEffect } from 'react';

function MovieTab() { 
    //console.log(dataMovies)


    const getMovies = async () => {
        try {
          const response = await fetch("http://localhost:5000/movies");
          const jsonData = await response.json();

          return jsonData
        } catch (error) {
            console.error(error.message);
        }
       
      }
    
      useEffect(() => {
        // Update the document title using the browser API
         getMovies();
    
      },[]);

const a = getMovies()
a.then(movies=>{
    console.log(movies)

    movies.forEach(element => {
        console.log(element)

        return(
        <>
        

        </>
    );
    });
})



   
    
}

export default MovieTab;

/*
        
    return <div key={id} className="flex-container">
            <div className="movie-card">
                <p className="rating">80%</p>
                <div className="movie">
                    <div className="image"><img src={data.imageurl} alt="Deadpool poster" height="290px" width="240px"></img></div>
                    <div className="movie-title">{data.title_movie}</div>
                    <div className="info">
                        <div className="main-text">Release year:</div><div className="text">{data.year}</div>
                        <div className="main-text">Genre:</div><div className="text">{data.title_genre}</div>
                    </div>
                </div>
            </div>
        </div>
*/
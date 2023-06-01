const express = require('express')
const app = express();
const PORT = 5000;
const db  = require("./db")
const cors = require("cors")
app.use(cors())
app.use(express.json())

//create -> done
app.post("/movies", async(req,res)=>{
    try {
        const {genre_id, title_movie, year, summary, imageurl} = req.body;
        var genre = await db.query("SELECT title_genre FROM genre WHERE genre_id = $1", [genre_id])
        genre = genre.rows[0].title_genre;
        const newMovie = await db.query("INSERT INTO movies (genre_id, title_genre, title_movie, year, summary, imageurl) VALUES($1,$2,$3,$4,$5, $6) RETURNING *",[genre_id,genre, title_movie, year, summary, imageurl]);
        res.json(newMovie.rows[0]);
    } catch (error) {
        console.error(error.message);
        res.json(`Error has occurred: ${error}`)
    }
})


//get all movies -> done
app.get("/movies", async(req,res)=>{
    try {
        const allMoview = await db.query("SELECT * FROM movies");
        res.json(allMoview.rows);
    } catch (error) {
        console.error(error.message);
        res.json(`Error has occurred: ${error}`)
    }
})

// get concrete movie -> done
/*
app.get("/movies/:id", async(req,res)=>{
    try {
        const {search} = req.query;

        const {id} = req.params;
        const movie = await db.query("SELECT * FROM movies WHERE movie_id = $1", [id]);

        const movieSearch = await db.query("SELECT * FROM movies WHERE title_movie || ' ' || title_genre ILIKE $1",
         [`%${search}%`]
         );

        res.json(movieSearch.rows);
        //console.log(search)

        //res.json(movie.rows[0]);
    } catch (error) {
        console.error(error.message);
        res.json(`Error has occurred: ${error}`)
    }
})
*/

app.get("/movies/search", async (req, res) => {
    try {
      const { term, yearFrom, yearTo } = req.query;
      const movieSearch = await db.query(
        "SELECT * FROM movies WHERE title_movie ILIKE $1 AND year BETWEEN  $2 AND  $3",
        [`%${term}%`, yearFrom, yearTo]
      );
      res.json(movieSearch.rows);
    } catch (error) {
      console.error(error.message);
    }
  });




  // top3 film
  app.get("/movies/top", async (req, res) => {
    try {
        const topMovies = await db.query(
          "SELECT * FROM movies ORDER BY ranking DESC LIMIT 3"
        );
        res.json(topMovies.rows);
    } catch (error) {
      console.error(error.message);
    }
  });


  // top views film
  app.get("/movies/viewsTop", async (req, res) => {
    try {
        const topViewsMovies = await db.query(
          "SELECT * FROM movies ORDER BY views DESC LIMIT 3"
        );
        res.json(topViewsMovies.rows);
    } catch (error) {
      console.error(error.message);
    }
  });

// update concrete movie -> done
// 
app.put("/movies/:id", async(req,res)=>{
    try {
        const {id} = req.params;
        const {genre_id, title_movie, year, summary, imageurl} = req.body;
        var genre = await db.query("SELECT title_genre FROM genre WHERE genre_id = $1", [genre_id]);
        genre = genre.rows[0].title_genre;
        const update =  await db.query("UPDATE movies SET genre_id = $1, title_genre = $2, title_movie = $3, year = $4, summary = $5, imageurl = $6  WHERE movie_id = $7",[genre_id,genre, title_movie, year, summary, imageurl, id]);
        res.json("[database updated -> record updated]");
    } catch (error) {
        console.error(error.message);
        res.json(`Error has occurred: ${error}`)
    }
})



//delete conrete movie -> done
app.delete("/movies/:id", async(req,res)=>{
    try {
        const {id} = req.params;
        const update =  await db.query("DELETE FROM movies WHERE movie_id = $1",[id]);
        res.json("[database updated -> record deleted]");
    } catch (error) {
        console.error(error.message);
        res.json(`Error has occurred: ${error}`)
    }
})



app.listen(PORT, ()=>{
    console.log(`Server is running on PORT ${PORT}`);
});


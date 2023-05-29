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
app.get("/movies/:id", async(req,res)=>{
    try {
        const {id} = req.params;
        const movie = await db.query("SELECT * FROM movies WHERE movie_id = $1", [id]);
        res.json(movie.rows[0]);
    } catch (error) {
        console.error(error.message);
    }
})

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
    }
})

app.listen(PORT, ()=>{console.log(`Server is running on PORT ${PORT}`)})

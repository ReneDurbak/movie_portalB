const express = require('express')
const app = express();
const PORT = 5000;
const pool  = require("./db")
const cors = require("cors")


app.use(cors())
app.use(express.json())

//creat
app.post("/movies", async(req,res)=>{
    try {
        const {genre_id, title_movie, year, summary, imageurl} = req.body;
        const newMovie = await pool.query("INSERT INTO movies (genre_id) VALUES($1) (title_movie) VALUES($2) (year) VALUES($3) (summary) VALUES($4) (imageurl) VALUES($5) RETURNING *",[genre_id, title_movie, year, summary, imageurl]);
        res.json(newMovie.rows[0]);
    } catch (error) {
        console.error(error.message);
    }
})

//get all movies
app.get("/movies", async(req,res)=>{
    try {
        const allMoview = await pool.query("SELECT * FROM movies");
        res.json(allMoview.rows);
    } catch (error) {
        console.error(error.message);
    }
})

// get concrete movie
app.get("/movies/:id", async(req,res)=>{
    try {
        const {id} = req.params;
        const movie = await pool.query("SELECT * FROM movies WHERE movie_id = $1", [id]);
        res.json(movie.rows[0]);
    } catch (error) {
        console.error(error.message);
    }
})

// update concrete movie
// 
app.put("/movies/:id", async(req,res)=>{
    try {
        const {id} = req.params;
        const {genre_id, title_movie, year, summary, image_url} = req.body;
        const update =  await pool.query("UPDATE movies SET genre_id = $1, title_movie = $2, year = $3, summary = $4, image_url = $5  WHERE movie_id = $6",[genre_id, title_movie, year, summary, image_url, id]);
        res.json("[database updated -> record updated]");
    } catch (error) {
        console.error(error.message);
    }
})


//delete conrete movie
app.delete("/movies/:id", async(req,res)=>{
    try {
        const {id} = req.params;
        const update =  await pool.query("DELETE FROM movies WHERE movie_id = $1",[id]);
        res.json("[database updated -> record deleted]");
    } catch (error) {
        console.error(error.message);
    }
})

app.listen(PORT, ()=>{console.log(`Server is running on PORT ${PORT}`)})
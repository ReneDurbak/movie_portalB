const express = require('express')
const app = express();
const PORT = 5000;
const db  = require("./db")
const cors = require("cors")


app.use(cors())
app.use(express.json())

app.post("/movies", async(req,res)=>{
    try {
        await console.log(req.body)
    } catch (error) {
        console.error(error.message)
    }

})


app.listen(PORT, ()=>{console.log(`Server is running on PORT ${PORT}`)})
const Pool = require("pg").Pool

const pool = new Pool({
    username:"postgres",
    password: "postgres",
    host:"localhost",
    port: 5432,
    database: "moviePortal"

})

module.exports = pool
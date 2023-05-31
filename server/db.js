const {Client} = require('pg')
require('dotenv').config()

const client = new Client({
  user: process.env.USER,
  host: process.env.URL,
  database: 'movieportal',
  password: process.env.PASSWORD,
  port: 5432,
})
client.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});


module.exports = client
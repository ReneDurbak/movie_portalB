const Pool = require('pg').Pool

const client = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'movieportal',
  password: 'postgres',
  port: 5432,
})
client.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});


module.exports = client
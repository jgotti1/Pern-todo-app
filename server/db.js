const Pool = require("pg").Pool;
require("dotenv").config();
const dbPernToDo = new Pool({
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
  port: process.env.DB_PORT,
  host: "127.0.0.1",
  dialect: "postgres",
});

module.exports = dbPernToDo;

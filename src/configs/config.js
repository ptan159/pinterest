require("dotenv").config();
module.exports = {
  database: process.env.DATABASE,
  username: process.env.USERNAME,
  password: process.env.PASSWORD,
  host: process.env.HOST,
  port: process.env.PORT,
  dialect: process.env.DIALECT,
};

const express = require("express");
const { login } = require("../controllers/authControllers");

const auth_routes = express.Router();

auth_routes.post("/login", login);

module.exports = auth_routes;

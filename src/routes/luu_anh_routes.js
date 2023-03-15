const express = require("express");
const { checkToken } = require("../controllers/authControllers");
const {
  checkPhotoPinned,
  getPins,
  getPinsByUserId,
} = require("../controllers/luu_anh_controllers");

const luu_anh_routes = express.Router();

luu_anh_routes.get("/getPins", checkToken, getPins);
luu_anh_routes.get("/check", checkToken, checkPhotoPinned);
luu_anh_routes.get("/:nguoi_dung_id", checkToken, getPinsByUserId);

module.exports = luu_anh_routes;

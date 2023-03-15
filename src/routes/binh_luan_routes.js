const express = require("express");
const { checkToken } = require("../controllers/authControllers");
const {
  getCommentsbyPhoto,
  getAllComments,
  postComment,
} = require("../controllers/binh_luan_controllers");

const binh_luan_routes = express.Router();

binh_luan_routes.get("/:hinh_id", checkToken, getCommentsbyPhoto);
binh_luan_routes.get("", checkToken, getAllComments);
binh_luan_routes.post("", checkToken, postComment);

module.exports = binh_luan_routes;

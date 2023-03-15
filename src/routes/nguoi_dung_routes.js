const express = require("express");
const { checkToken } = require("../controllers/authControllers");

const {
  getUsers,
  updateUser,
  getUserInfo,
  signup,
  deleteUser,
} = require("../controllers/nguoi_dung_controller");
const { uploadAvatar } = require("../controllers/uploadControllers");

const nguoi_dung_routes = express.Router();

nguoi_dung_routes.get("", checkToken, getUsers);
nguoi_dung_routes.get("/info", checkToken, getUserInfo);
nguoi_dung_routes.put("", checkToken, uploadAvatar.single("file"), updateUser);
nguoi_dung_routes.post("", signup);
nguoi_dung_routes.delete("/:nguoi_dung_id", checkToken, deleteUser);

module.exports = nguoi_dung_routes;

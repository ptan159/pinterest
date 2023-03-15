const express = require("express");
const { checkToken } = require("../controllers/authControllers");

const {
  getPhotos,
  getPhotoDetail,
  findPhotoByName,
  postPhoto,
  deletePhoto,
  getPhotosByUser,
} = require("../controllers/hinh_anh_controllers");
const { uploadPhoto } = require("../controllers/uploadControllers");
const hinh_anh_routes = express.Router();

hinh_anh_routes.get("", checkToken, getPhotos);
hinh_anh_routes.post("", checkToken, uploadPhoto.single("file"), postPhoto);
hinh_anh_routes.get("/:keyword", checkToken, findPhotoByName);
hinh_anh_routes.get("/detail/:hinh_id", checkToken, getPhotoDetail);
hinh_anh_routes.get("/get/:nguoi_dung_id", checkToken, getPhotosByUser);
hinh_anh_routes.delete("/:hinh_id", checkToken, deletePhoto);

module.exports = hinh_anh_routes;

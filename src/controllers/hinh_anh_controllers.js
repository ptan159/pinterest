const sequelize = require("../models/connection");
const initModels = require("../models/init-models");
const models = initModels(sequelize);
const { Op } = require("sequelize");
const { decodeToken } = require("../configs/jwt");

const getPhotos = async (req, res) => {
  try {
    let data = await models.hinh_anh.findAll();
    res.send(data);
  } catch (error) {
    console.log(error);
  }
};
const findPhotoByName = async (req, res) => {
  try {
    let { keyword } = req.params;
    let data = await models.hinh_anh.findAll({
      where: {
        ten_hinh: {
          [Op.like]: `%${keyword}%`,
        },
      },
    });
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send(error);
  }
};
const getPhotoDetail = async (req, res) => {
  try {
    let { hinh_id } = req.params;
    let data = await models.hinh_anh.findOne({
      where: {
        hinh_id,
      },
      include: ["nguoi_dung", "binh_luans", "luu_anhs"],
    });
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send(error);
  }
};

const getPhotosByUser = async (req, res) => {
  try {
    let { nguoi_dung_id } = req.params;
    let data = await models.nguoi_dung.findOne({
      where: {
        nguoi_dung_id,
      },
      include: ["hinh_anhs"],
    });
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send("Error get photo by user BE.");
  }
};
const postPhoto = async (req, res) => {
  try {
    let { photo_info } = req.body;
    let { ten_hinh, mo_ta } = JSON.parse(photo_info);
    let { token } = req.headers;
    let decode = decodeToken(token);
    let modelPhoto = {
      ten_hinh,
      mo_ta,
      duong_dan: process.cwd() + "/public/photo" + res.req.file.filename,
      nguoi_dung_id: decode.nguoi_dung_id,
    };
    await models.hinh_anh.create(modelPhoto);
    res.send("Them hinh thanh cong.");
  } catch (error) {
    console.log(error);
    res.send("Error post a photo by id BE.");
  }
};
const deletePhoto = async (req, res) => {
  try {
    let { hinh_id } = req.params;
    await models.hinh_anh.destroy({
      where: {
        hinh_id,
      },
    });
    res.send("Xoa hinh thanh cong.");
  } catch (error) {
    console.log(error);
    res.send("Error delete photo BE.");
  }
};
module.exports = {
  getPhotos,
  findPhotoByName,
  getPhotoDetail,
  postPhoto,
  deletePhoto,
  getPhotosByUser,
};

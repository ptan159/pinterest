const sequelize = require("../models/connection");
const initModels = require("../models/init-models");
const models = initModels(sequelize);
const bcrypt = require("bcrypt");
const { successCode, failCode } = require("../configs/response");
const { decodeToken } = require("../configs/jwt");

const getUsers = async (req, res) => {
  try {
    let data = await models.nguoi_dung.findAll();
    successCode(res, data, "Lấy dữ liệu thành công!");
  } catch (error) {
    failCode(res, "", "Lỗi get all users BE.");
  }
};
const getUserInfo = async (req, res) => {
  try {
    let { token } = req.headers;
    let decode = decodeToken(token);
    successCode(res, decode, "Lấy dữ liệu thành công!");
  } catch (error) {
    console.log(error);
    failCode(res, "", "Error get user info BE.");
  }
};

const updateUser = async (req, res) => {
  try {
    let { info } = req.body;
    let { email, mat_khau, ho_ten, tuoi } = JSON.parse(info);
    let modelUser = {
      mat_khau: bcrypt.hashSync(mat_khau, 10),
      ho_ten,
      tuoi,
      anh_dai_dien: process.cwd() + "/public/photo" + res.req.file.filename,
    };
    await models.nguoi_dung.update(modelUser, {
      where: {
        email,
      },
    });
    console.log(email);
    successCode(res, "", "Cập nhật thành công!");
  } catch (error) {
    console.log(error);
    failCode(res, "", "Lỗi update user BE.");
  }
};
const signup = async (req, res, next) => {
  try {
    let { email, mat_khau, ho_ten } = req.body;
    let modelUser = {
      email,
      mat_khau,
      ho_ten,
    };
    let checkExisted = await models.nguoi_dung.findOne({
      where: {
        email,
      },
    });
    if (checkExisted) {
      failCode(res, "", "Email đã tồn tại.");
    } else {
      await models.nguoi_dung.create(modelUser);
      successCode(res, modelUser, "Đăng kí thành công!");
    }
  } catch (error) {
    console.log(error);
    failCode(res, "", "Lỗi sign up BE.");
  }
};
const deleteUser = async (req, res) => {
  try {
    let { nguoi_dung_id } = req.params;
    await models.nguoi_dung.destroy({
      where: {
        nguoi_dung_id: Number(nguoi_dung_id),
      },
    });
    successCode(res, nguoi_dung_id, "Xoá người dùng thành công!");
  } catch (error) {
    console.log(error);
    failCode(res, "", "Loi xoa nguoi dung BE.");
  }
};
module.exports = {
  getUsers,
  updateUser,
  getUserInfo,
  signup,
  deleteUser,
};

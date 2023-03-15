const { decodeToken } = require("../configs/jwt");
const sequelize = require("../models/connection");
const initModels = require("../models/init-models");
const models = initModels(sequelize);

const getAllComments = async (req, res) => {
  try {
    let data = await models.binh_luan.findAll();
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send(error);
  }
};
const getCommentsbyPhoto = async (req, res) => {
  try {
    let { hinh_id } = req.params;
    let data = await models.binh_luan.findAll({
      where: {
        hinh_id,
      },
    });
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send("Error get comments by photo");
  }
};
const postComment = async (req, res) => {
  try {
    let { noi_dung, hinh_id } = req.body;
    let { token } = req.headers;
    let decode = decodeToken(token);
    let modelComment = {
      noi_dung,
      nguoi_dung_id: decode.nguoi_dung_id,
      hinh_id,
      ngay_binh_luan: new Date().toISOString().slice(0, 10).replace("T", " "),
    };
    await models.binh_luan.create(modelComment);
    res.send("post comment thanh cong!");
  } catch (error) {
    console.log(error);
    res.send("Error post comment");
  }
};
module.exports = {
  getAllComments,
  getCommentsbyPhoto,
  postComment,
};

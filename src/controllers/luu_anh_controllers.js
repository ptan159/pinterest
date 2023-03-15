const sequelize = require("../models/connection");
const initModels = require("../models/init-models");
const models = initModels(sequelize);
const { Op } = require("sequelize");

const getPins = async (req, res) => {
  try {
    let data = await models.luu_anh.findAll();
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send(error);
  }
};
const getPinsByUserId = async (req, res) => {
  try {
    let { nguoi_dung_id } = req.params;
    let data = await models.nguoi_dung.findOne({
      where: {
        nguoi_dung_id,
      },
      include: ["hinh_id_hinh_anhs"],
    });
    res.send(data);
  } catch (error) {
    console.log(error);
    res.send(error);
  }
};
const checkPhotoPinned = async (req, res) => {
  try {
    let { nguoi_dung_id, hinh_id } = req.body;
    let photoSaved = await models.luu_anh.findAll({
      where: {
        [Op.and]: [{ nguoi_dung_id }, { hinh_id }],
      },
    });
    if (photoSaved.length !== 0) {
      res.send("Hình đã được lưu.");
    } else {
      res.send("Hình chưa được lưu.");
    }
  } catch (error) {
    console.log(error);
    res.send(error);
  }
};

module.exports = {
  checkPhotoPinned,
  getPins,
  getPinsByUserId,
};

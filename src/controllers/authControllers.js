const sequelize = require("../models/connection");
const initModels = require("../models/init-models");
const models = initModels(sequelize);
const bcrypt = require("bcrypt");
const { generateToken } = require("../configs/jwt");
const { verifyToken } = require("../configs/jwt");
const { successCode, failCode } = require("../configs/response");

const checkToken = (req, res, next) => {
  try {
    let { token } = req.headers;
    if (verifyToken(token)) {
      next();
    } else {
      res.send("Token khong hop le.");
    }
  } catch (error) {
    console.log(error);
    res.status(401).send(error);
  }
};
const login = async (req, res) => {
  try {
    let { email, mat_khau } = req.body;
    let checkUser = await models.nguoi_dung.findOne({
      where: {
        email,
      },
    });
    if (checkUser) {
      let checkPassword = bcrypt.compareSync(mat_khau, checkUser.mat_khau);
      if (checkPassword) {
        let token = generateToken({ ...checkUser.dataValues, mat_khau: "" });
        successCode(res, token, "Đăng nhập thành công!");
      } else {
        failCode(res, "", "Mật khẩu không đúng.");
      }
    } else {
      failCode(res, "", "Email không đúng.");
    }
  } catch (error) {
    console.log(error);
    res.send("Lỗi login BE.");
  }
};

module.exports = {
  checkToken,
  login,
};

const jwt = require("jsonwebtoken");

const generateToken = (data) => {
  let token = jwt.sign(data, "secured", { expiresIn: "30m" });
  return token;
};

const verifyToken = (token) => {
  let isValid = jwt.verify(token, "secured");
  return isValid;
};

const decodeToken = (token) => {
  let decode = jwt.decode(token);
  return decode;
};

module.exports = {
  generateToken,
  verifyToken,
  decodeToken,
};

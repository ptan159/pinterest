const multer = require("multer");

const avatarStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, process.cwd() + "/public/avatar");
  },
  filename: (req, file, cb) => {
    const newfileName = Date.now() + "-" + file.originalname;
    cb(null, newfileName);
  },
});
const uploadAvatar = multer({ storage: avatarStorage });

const photoStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, process.cwd() + "/public/photo");
  },
  filename: (req, file, cb) => {
    const newfileName = Date.now() + "-" + file.originalname;
    cb(null, newfileName);
  },
});
const uploadPhoto = multer({ storage: photoStorage });

module.exports = {
  uploadAvatar,
  uploadPhoto,
};

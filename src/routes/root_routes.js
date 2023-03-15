const express = require("express");
const rootRoutes = express.Router();

const nguoi_dung_routes = require("./nguoi_dung_routes");
rootRoutes.use("/user", nguoi_dung_routes);

const luu_anh_routes = require("./luu_anh_routes");
rootRoutes.use("/pin", luu_anh_routes);

const hinh_anh_routes = require("./hinh_anh_routes");
rootRoutes.use("/photo", hinh_anh_routes);

const binh_luan_routes = require("./binh_luan_routes");
rootRoutes.use("/comment", binh_luan_routes);

const auth_routes = require("./auth_routes");
rootRoutes.use("/auth", auth_routes);

module.exports = rootRoutes;

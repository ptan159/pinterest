const express = require("express");
const app = express();
const rootRoutes = require("./routes/root_routes");
app.use(express.json());
app.use(express.static("."));
const cors = require("cors");
app.use(cors());
app.use("/api", rootRoutes);
app.listen(8080);

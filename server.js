require("dotenv").config();
const express = require("express");
const cors = require("cors");
const courseRoutes = require("./src/routes/courseRoutes");
const enrollmentRoutes = require("./src/routes/enrollmentRoutes");
const lessonRoutes = require("./src/routes/lessonRoutes");
const userRoutes = require("./src/routes/userRoutes");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api", courseRoutes);
app.use("/api", enrollmentRoutes);
app.use("/api", lessonRoutes);
app.use("/api", userRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`🎓 Servidor rodando em http://localhost:${PORT}`);
});

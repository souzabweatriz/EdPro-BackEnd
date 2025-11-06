require("dotenv").config();
const express = require("express");
const cors = require("cors");
const courseRoutes = require("./src/routes/courseRoutes");
const enrollmentRoutes = require("./src/routes/enrollmentRoutes");
const lessonRoutes = require("./src/routes/lessonRoutes");
const userRoutes = require("./src/routes/userRoutes");
const authRoutes = require("./src/routes/authRoutes");
const path = require("path");

const app = express();
app.use(cors({ origin: process.env.FRONTEND_URL || true, credentials: true }));
app.use(express.json());

app.use("/uploads", express.static(path.join(__dirname, "uploads")));
app.use("/api", courseRoutes);
app.use("/api", enrollmentRoutes);
app.use("/api", lessonRoutes);
app.use("/api", authRoutes);
app.use("/api", userRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`🎓 Servidor rodando em http://localhost:${PORT}`);
});

const express = require("express");
const router = express.Router();
const upload = require("../config/upload.js");
const apiKeyMiddleware = require("../config/apiKey");

const userController = require("../controllers/userController");

router.use(apiKeyMiddleware);
router.get("/users", userController.getAllUsers);
router.get("/users/:id", userController.getUserById);
router.post("/users", upload.single("photo"), userController.createUser);
router.put("/users/:id", userController.updateUser);
router.delete("/users/:id", userController.deleteUser);

module.exports = router;
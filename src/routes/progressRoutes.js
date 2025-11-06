const express = require("express");
const router = express.Router();
const apiKeyMiddleware = require("../config/apiKey");

const progressController = require("../controllers/progressController");

router.use(apiKeyMiddleware);
router.get("/progress", progressController.getAllProgress);
router.get("/progress/:id", progressController.getProgressById);
router.post("/progress", progressController.createProgress);
router.put("/progress/:id", progressController.updateProgress);
router.delete("/progress/:id", progressController.deleteProgress);

module.exports = router;
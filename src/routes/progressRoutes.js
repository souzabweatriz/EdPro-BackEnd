const express = require("express");
const router = express.Router();

const progressController = require("../controllers/progressController");

router.get("/progress", progressController.getAllProgress);
router.get("/progress/:id", progressController.getProgressById);
router.post("/progress", progressController.createProgress);
router.put("/progress/:id", progressController.updateProgress);
router.delete("/progress/:id", progressController.deleteProgress);
router.get("/progress/percentage/:enrollment_id", progressController.getProgressPercentage);

module.exports = router;
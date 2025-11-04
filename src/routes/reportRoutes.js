const express = require("express");
const router = express.Router();
const reportController = require("../controllers/reportController");

router.get("/users/report/pdf", reportController.exportUsersPDF);
router.get("/enrollments/report/pdf", reportController.exportEnrollmentsPDF);

module.exports = router;
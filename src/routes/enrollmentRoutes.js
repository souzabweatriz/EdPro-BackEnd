const express = require("express");
const router = express.Router();
const apiKeyMiddleware = require("../config/apiKey");

const enrollmentController = require("../controllers/enrollmentController");

router.use(apiKeyMiddleware);
router.get("/enrollments", enrollmentController.getAllEnrollments);
router.get("/enrollments/:id", enrollmentController.getEnrollmentById);
router.post("/enrollments", enrollmentController.createEnrollment);
router.put("/enrollments/:id", enrollmentController.updateEnrollment);
router.delete("/enrollments/:id", enrollmentController.deleteEnrollment);

module.exports = router;
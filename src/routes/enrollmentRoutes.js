const express = require("express");
const router = express.Router();

const enrollmentController = require("../controllers/Controller");

router.get("/enrollments", enrollmentController.getAllEnrollments);
router.get("/enrollments/:id", enrollmentController.getEnrollmentById);
router.post("/enrollments", enrollmentController.createEnrollment);
router.put("/enrollments/:id", enrollmentController.updateEnrollment);
router.delete("/enrollments/:id", enrollmentController.deleteEnrollment);

module.exports = router;
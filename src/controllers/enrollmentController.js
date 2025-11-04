const enrollmentModel = require('../models/enrollmentModel');

const getAllEnrollments = async (req, res) => {
    try {
        const enrollments = await enrollmentModel.getEnrollments();
        res.json(enrollments);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar matrículas." });
    }
};

const getEnrollmentById = async (req, res) => {
    try {
        const enrollment = await enrollmentModel.getEnrollmentById(req.params.id);
        if (!enrollment) {
            return res.status(404).json({ message: "Matrícula não encontrada." });
        }
        res.json(enrollment);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar matrícula." });
    }
};

const createEnrollment = async (req, res) => {
    try {
        const { student_id, course_id } = req.body;
        const newEnrollment = await enrollmentModel.createEnrollment(student_id, course_id);
        res.status(201).json(newEnrollment);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar matrícula." });
    }
};

const updateEnrollment = async (req, res) => {
    try {
        const { student_id, course_id } = req.body;
        const updatedEnrollment = await enrollmentModel.updateEnrollment(req.params.id, student_id, course_id);
        if (!updatedEnrollment) {
            return res.status(404).json({ message: "Matrícula não encontrada." });
        }
        res.json(updatedEnrollment);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar matrícula." });
    }
};

const deleteEnrollment = async (req, res) => {
    try {
        const message = await enrollmentModel.deleteEnrollment(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar matrícula." });
    }
};

module.exports = { getAllEnrollments, getEnrollmentById, createEnrollment, updateEnrollment, deleteEnrollment };
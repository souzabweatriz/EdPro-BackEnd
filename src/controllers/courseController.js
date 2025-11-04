const courseModel = require('../models/courseModel');

const getAllCourses = async (req, res) => {
    try {
        const courses = await courseModel.getCourses();
        res.json(courses);
    } catch (error) {
        res.status(501).json({ message: "Erro ao buscar cursos." });
    }
};

const getCourseById = async (req, res) => {
    try {
        const course = await courseModel.getCourseById(req.params.id);
        if (!course) {
            return res.status(404).json({ message: "Curso não encontrado." });
        }
        res.json(course);
    } catch (error) {
        res.status(501).json({ message: "Erro ao buscar curso." });
    }
};

const createCourse = async (req, res) => {
    try {
        const { owner_id, title, description, category } = req.body;
        const photo = req.file ? req.file.filename : null;
        const newCourse = await courseModel.createCourse(owner_id, photo, title, description, category);
        res.status(201).json(newCourse);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar curso." });
    }
};

const updateCourse = async (req, res) => {
    try {
        const { owner_id, photo, title, description, category } = req.body;
        const updatedCourse = await courseModel.updateCourse(req.params.id, owner_id, photo, title, description, category);
        if (!updatedCourse) {
            return res.status(404).json({ message: "Curso não encontrado." });
        }
        res.json(updatedCourse);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar curso." });
    }
};

const deleteCourse = async (req, res) => {
    try {
        const message = await courseModel.deleteCourse(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar curso." });
    }
};

module.exports = { getAllCourses, getCourseById, createCourse, updateCourse, deleteCourse };
const lessonModel = require('../models/lessonModel');

const getAllLessons = async (req, res) => {
    try {
        const lessons = await lessonModel.getLessons();
        res.json(lessons);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar lições." });
    }
};

const getLessonById = async (req, res) => {
    try {
        const lesson = await lessonModel.getLessonById(req.params.id);
        if (!lesson) {
            return res.status(404).json({ message: "Lição não encontrada." });
        }
        res.json(lesson);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar lição." });
    }
};

const getLessonsByCourse = async (req, res) => {
    try {
        const lessons = await lessonModel.getLessonsByCourse(req.params.course_id);
        if (!lessons || lessons.length === 0) {
            return res.status(404).json({ message: "Lições não encontrada." });
        }
        res.json(lessons);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar lições" });
    }
};

const createLesson = async (req, res) => {
    try {
        const { course_id, title, subtitle, content, media } = req.body;
        const newLesson = await lessonModel.createLesson(course_id, title, subtitle, content, media);
        res.status(201).json(newLesson);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar lição." });
    }
};

const updateLesson = async (req, res) => {
    try {
        const { course_id, title, subtitle, content, media } = req.body;
        const updatedLesson = await lessonModel.updateLesson(req.params.id, course_id, title, subtitle, content, media);
        if (!updatedLesson) {
            return res.status(404).json({ message: "Lição não encontrada." });
        }
        res.json(updatedLesson);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar lição." });
    }
};

const deleteLesson = async (req, res) => {
    try {
        const message = await lessonModel.deleteLesson(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar lição." });
    }
};

module.exports = { getAllLessons, getLessonById, getLessonsByCourse,createLesson, updateLesson, deleteLesson };
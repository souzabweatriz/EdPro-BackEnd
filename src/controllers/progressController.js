const progressModel = require('../models/progressModel');

const getAllProgress = async (req, res) => {
    try {
        const progress = await progressModel.getProgress();
        res.json(progress);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar progresso." });
    }
};

const getProgressById = async (req, res) => {
    try {
        const progress = await progressModel.getProgressById(req.params.id);
        if (!progress) {
            return res.status(404).json({ message: "Progresso não encontrado." });
        }
        res.json(progress);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar progresso." });
    }
};

const createProgress = async (req, res) => {
    try {
        const { enrollment_id, lesson_id, status, completed_at } = req.body;
        const newProgress = await progressModel.createProgress(enrollment_id, lesson_id, status, completed_at);
        res.status(201).json(newProgress);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar progresso." });
    }
};

const updateProgress = async (req, res) => {
    try {
        const { enrollment_id, lesson_id, status, completed_at } = req.body;
        const updatedProgress = await progressModel.updateProgress(req.params.id, enrollment_id, lesson_id, status, completed_at);
        if (!updatedProgress) {
            return res.status(404).json({ message: "Progresso não encontrado." });
        }
        res.json(updatedProgress);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar progresso." });
    }
};

const deleteProgress = async (req, res) => {
    try {
        const message = await progressModel.deleteProgress(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar progresso." });
    }
};

module.exports = { getAllProgress, getProgressById, createProgress, updateProgress, deleteProgress };
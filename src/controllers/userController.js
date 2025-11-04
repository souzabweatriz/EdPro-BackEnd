const userModel = require('../models/userModel');

const getAllUsers = async (req, res) => {
    try {
        const users = await userModel.getUsers();
        res.json(users);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar usuários." });
    }
};

const getUserById = async (req, res) => {
    try {
        const user = await userModel.getUserById(req.params.id);
        if (!user) {
            return res.status(404).json({ message: "Usuário não encontrado." });
        }
        res.json(user);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar usuário." });
    }
};

const createUser = async (req, res) => {
    try {
        const { full_name, username, email, phone, password } = req.body;
        const photo = req.file ? req.file.filename : null;
        const newUser = await userModel.createUser(full_name, username, email, phone, password, photo);
        res.status(201).json(newUser);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar usuário." });
    }
};

const updateUser = async (req, res) => {
    try {
        const { full_name, username, email, phone, password, photo } = req.body;
        const updatedUser = await userModel.updateUser(req.params.id, full_name, username, email, phone, password, photo);
        if (!updatedUser) {
            return res.status(404).json({ message: "Usuário não encontrado." });
        }
        res.json(updatedUser);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar usuário." });
    }
};

const deleteUser = async (req, res) => {
    try {
        const message = await userModel.deleteUser(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar usuário." });
    }
};

module.exports = { getAllUsers, getUserById, createUser, updateUser, deleteUser };
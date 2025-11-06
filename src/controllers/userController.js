const userModel = require('../models/userModel');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

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

const signUp = async (req, res) => {
    try {
        const { name, email, password } = req.body;

        if (!name || !email || !password) return res.status(400).json({ error: "Todos campos obrigatórios" });
        if (name.length < 2) return res.status(400).json({ error: "Nome muito curto" });
        if (password.length < 5) return res.status(400).json({ error: "Senha muito curta" });

     const existing = await userModel.getUserByEmail(email);
        if (existing) return res.status(409).json({ error: "Email em uso" });

        const hashedPassword = await bcrypt.hash(password, 10);

        const newUser = await userModel.createAuthUser(name, email, hashedPassword, 'aluno');


        const secret = process.env.JWT_SECRET || 'default_jwt_secret_change_me';
        const token = jwt.sign({ userId: newUser.id, email: newUser.email, role: newUser.role }, secret, { expiresIn: '7d' });

        const cookieOpts = {
            httpOnly: true,
            secure: process.env.NODE_ENV === 'production',
            sameSite: 'lax',
            maxAge: 7 * 24 * 60 * 60 * 1000, 
        };
        res.cookie('auth-token', token, cookieOpts);

        const userResponse = { id: newUser.id, name: newUser.full_name, email: newUser.email, role: newUser.role };

        return res.status(201).json({ user: userResponse, message: "Cadastro sucesso!", token });
    } catch (error) {
        console.error('signup error', error);
        return res.status(500).json({ error: "Erro ao cadastrar usuário." });
    }
};

const logout = async (req, res) => {
    try {
        const cookieOpts = {
            httpOnly: true,
            secure: process.env.NODE_ENV === 'production',
            sameSite: 'lax',
        };
        res.clearCookie('auth-token', cookieOpts);
        return res.json({ success: true, message: 'Logout sucesso!' });
    } catch (error) {
        console.error('logout error', error);
        return res.status(500).json({ error: 'Erro ao efetuar logout' });
    }
};

const login = async (req, res) => {
    try {
        const { email, password } = req.body;
        if (!email || !password) return res.status(400).json({ error: "Email e senha obrigatórios" });

        const user = await userModel.getUserByEmail(email);
        if (!user) return res.status(401).json({ error: "Credenciais inválidas" });

        const match = await bcrypt.compare(password, user.password);
        if (!match) return res.status(401).json({ error: "Credenciais inválidas" });

        const secret = process.env.JWT_SECRET || 'default_jwt_secret_change_me';
        const token = jwt.sign({ userId: user.id, email: user.email, role: user.role }, secret, { expiresIn: '7d' });

        const cookieOpts = {
            httpOnly: true,
            secure: process.env.NODE_ENV === 'production',
            sameSite: 'lax',
            maxAge: 7 * 24 * 60 * 60 * 1000, 
        };
        res.cookie('auth-token', token, cookieOpts);

        const userResponse = { id: user.id, name: user.full_name, email: user.email, role: user.role };
        return res.json({ user: userResponse, message: "Login sucesso!", token });
    } catch (error) {
        console.error('login error', error);
        return res.status(500).json({ error: "Erro ao efetuar login." });
    }
};

const getMe = async (req, res) => {
    try {
        const auth = req.headers.authorization || '';
        const token = auth.startsWith('Bearer ') ? auth.slice(7) : auth;
        if (!token) return res.status(401).json({ error: 'Não autenticado' });

        const secret = process.env.JWT_SECRET || 'default_jwt_secret_change_me';
        let payload;
        try {
            payload = jwt.verify(token, secret);
        } catch (err) {
            return res.status(401).json({ error: 'Token inválido' });
        }

        const user = await userModel.getUserById(payload.userId);
        if (!user) return res.status(404).json({ error: 'Usuário não encontrado' });

        const userResponse = { id: user.id, name: user.full_name, email: user.email, role: user.role };
        return res.json({ user: userResponse });
    } catch (error) {
        console.error('getMe error', error);
        return res.status(500).json({ error: 'Erro ao buscar usuário' });
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

module.exports = { getAllUsers, getUserById, createUser, updateUser, deleteUser, signUp, login, getMe };
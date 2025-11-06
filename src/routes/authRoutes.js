const express = require('express');
const router = express.Router();
const apiKeyMiddleware = require('../config/apiKey');
const userController = require('../controllers/userController');

router.use(apiKeyMiddleware);
router.get('/auth', userController.getMe);
router.post('/auth', async (req, res) => {
    const { action, ...data } = req.body || {};
    try {
        switch (action) {
            case 'login':
                return await userController.login(req, res);
            case 'signup':
                return await userController.signUp(req, res);
            case 'logout':
                return await userController.logout(req, res);
            default:
                return res.status(400).json({ error: 'Ação inválida' });
        }
    } catch (err) {
        console.error('auth route error', err);
        return res.status(500).json({ error: 'Erro servidor' });
    }
});

module.exports = router;

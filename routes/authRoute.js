const express = require('express');
const authController = require('../controllers/auth');

const router = express.Router();

// Register form
router.post('/register', authController.register);
// Login form
router.post('/login', authController.login);
// Logout form
router.get('/logout', authController.logout);

module.exports = router;
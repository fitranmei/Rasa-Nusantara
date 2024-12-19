const express = require('express');
const userController = require('../controllers/profile');

function ensureAuthenticated(req, res, next) {
    console.log('Session:', req.session);
    if (req.session && req.session.user) {
        recentUser = req.session.user;
        console.log('Authenticated user:', recentUser);
        return next();
    }
    res.redirect('/login');
}

function Authenticated(req, res, next) {
    if (req.session && req.session.user) {
        req.user = req.session.user; 
    }
    next(); 
}

const router = express.Router();

// Menampilkan Profile
router.get('/:name', Authenticated, userController.profileUser);

// Membuat Form Edit Profile
router.get('/:name/edit', ensureAuthenticated, userController.formEditUser);

// Memproses Form Edit Profile
router.post('/:name/edit/save', ensureAuthenticated, userController.updateUser);

// Membuat Form Edit Password User
router.get('/:name/edit/password', ensureAuthenticated, userController.formEditUserPassword);

// Mengubah Password User
router.post('/:name/edit/password/change', ensureAuthenticated, userController.updateUserPassword);

// Menghapus Akun User
router.get("/:name/delete", ensureAuthenticated, userController.deleteUser);

module.exports = router;
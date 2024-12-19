const express = require('express');
const resepController = require('../controllers/resep');

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

// menampilakn form untuk upload resep
router.get("/unggah", ensureAuthenticated, resepController.formUnggahResep);

// format untuk menampilakn resep sesuai dari Nama Resep yang dipilih
router.get("/:ID_Resep", Authenticated, resepController.detailResep);

// format untuk menampilakn resep berdasarkan kata kunci
router.post("/searchResep", Authenticated, resepController.formSearchResep);

// format untuk menampilakan form untuk edit resep
router.get("/:ID_Resep/edit", Authenticated, resepController.editResep);

// format untuk unggah resep
router.post('/unggah-resep', ensureAuthenticated, resepController.createResep);

// format untuk update resep
router.post("/update-resep/:ID_Resep", ensureAuthenticated, resepController.updateResep);

// format untuk hapus resep
router.get("/delete-resep/:ID_Resep", ensureAuthenticated, resepController.deleteResep);

module.exports = router;
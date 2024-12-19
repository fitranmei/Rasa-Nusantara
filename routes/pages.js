const express = require('express');
const db = require('../database');

function parseResult(result) {
    return Object.values(JSON.parse(JSON.stringify(result)));
}

const router = express.Router();

router.get("/", function (req, res) {
    const sqlKategori = 'SELECT * FROM kategori';
    const sqlResep = `SELECT * FROM resep ORDER BY ID_Resep DESC LIMIT 3`;

    db.query(sqlKategori, (err, result) => {
        if (err) throw err;
        const kategori = parseResult(result);

        db.query(sqlResep, function (err, result) {
            if (err) throw err;

            const resep = parseResult(result);
            const recentUser = req.session.user || null; 

            console.log(resep);
            console.log("Endpoint / dipanggil");

            res.render("index", { resep, recentUser, kategori }); 
        });
    });
});

router.get('/resep', (req, res) => {
    const page = parseInt(req.query.page) || 1; 
    const limit = 15; 
    const offset = (page - 1) * limit; 

    const countSql = `SELECT COUNT(*) AS total FROM resep`;
    db.query(countSql, (err, countResult) => {
        if (err) throw err;

        const totalResep = countResult[0].total; 
        const totalPages = Math.ceil(totalResep / limit); 

        const sql = `
            SELECT * 
            FROM resep 
            ORDER BY ID_Resep DESC 
            LIMIT ? OFFSET ?
        `;
        db.query(sql, [limit, offset], (err, result) => {
            if (err) throw err;

            const resep = parseResult(result);
            console.log("Endpoint / dipanggil");

            const recentUser = req.session.user || null;

            res.render('resep', { resep, recentUser, page, totalPages });
        });
    });
});

router.get('/kategori/:Kategori', function (req, res) {
    const { Kategori } = req.params;
    const page = parseInt(req.query.page) || 1; 
    const limit = 9; 
    const offset = (page - 1) * limit; 

    if (!Kategori) {
        return res.status(400).send("Kategori tidak ditemukan.");
    }

    console.log(`Kategori: ${Kategori}, Page: ${page}`);

    const countSql = `SELECT COUNT(*) AS total FROM resep WHERE Kategori = ?`;
    db.query(countSql, [Kategori], (err, countResult) => {
        if (err) {
            console.error(err);
            return res.status(500).send("Kesalahan server.");
        }

        const totalResep = countResult[0].total; 
        const totalPages = Math.ceil(totalResep / limit); 

        const sqlkategori = `SELECT * FROM kategori WHERE Kategori = ?`;
        const sqlresep = `
            SELECT * 
            FROM resep 
            WHERE Kategori = ? 
            ORDER BY ID_Resep DESC 
            LIMIT ? OFFSET ?
        `;

        db.query(sqlkategori, [Kategori], (err, result) => {
            if (err) {
                console.error(err);
                return res.status(500).send("Kesalahan server.");
            }

            const kategori = parseResult(result)[0];
            if (!kategori) {
                return res.status(404).send("Kategori tidak ditemukan.");
            }

            db.query(sqlresep, [Kategori, limit, offset], (err, result) => {
                if (err) {
                    console.error(err);
                    return res.status(500).send("Kesalahan server.");
                }

                const resep = parseResult(result);
                const recentUser = req.session.user || null;

                console.log("Endpoint /kategori dipanggil");
                res.render("kategoriResep", { resep, recentUser, kategori, page, totalPages });
            });
        });
    });
});

router.get('/waktu/:Waktu', function (req, res) {
    const { Waktu } = req.params;
    const page = parseInt(req.query.page) || 1; 
    const limit = 9; 
    const offset = (page - 1) * limit; 

    if (!Waktu) {
        return res.status(400).send("Waktu tidak ditemukan.");
    }

    console.log(`Waktu: ${Waktu}, Page: ${page}`);

    const countSql = `SELECT COUNT(*) AS total FROM resep WHERE Waktu = ?`;
    db.query(countSql, [Waktu], (err, countResult) => {
        if (err) {
            console.error(err);
            return res.status(500).send("Kesalahan server.");
        }

        const totalResep = countResult[0].total; 
        const totalPages = Math.ceil(totalResep / limit); 

        const sqlresep = `
            SELECT * 
            FROM resep 
            WHERE Waktu = ? 
            ORDER BY ID_Resep DESC 
            LIMIT ? OFFSET ?
        `;

        db.query(sqlresep, [Waktu, limit, offset], function (err, result) {
            if (err) {
                console.error(err);
                return res.status(500).send("Kesalahan server.");
            }

            const resep = parseResult(result);
            const recentUser = req.session.user || null;

            console.log("Endpoint /waktu dipanggil");
            res.render("waktuResep", { resep, recentUser, waktu: Waktu, page, totalPages });
        });
    });
});

router.get('/register', (req, res) => {
    res.render('register');
});

router.get('/login', (req, res) => {
    res.render('login');
});

module.exports = router;
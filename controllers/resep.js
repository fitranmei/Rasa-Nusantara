const db = require('../database.js');
const fs = require('fs');

function parseResult(result) {
    return Object.values(JSON.parse(JSON.stringify(result)));
}

exports.formUnggahResep = (req, res) =>{
    const recentUser = req.session.user;

    console.log("Endpoint /unggah dipanggil");
    res.render("unggahResep", { recentUser }); 
};

exports.detailResep = (req, res) => {
    const ID_Resep = req.params.ID_Resep;
    const sqlresep = `SELECT * FROM resep WHERE ID_Resep = "${ID_Resep}"`;
    
    db.query(sqlresep, function (err, result) {
        if (err) throw err;

        const resep = parseResult(result)[0];
        const bahanList = JSON.parse(resep.Bahan);
        const langkahList = JSON.parse(resep.Langkah);

        const sqluser = `SELECT * FROM users WHERE ID_User = ${resep.ID_User}`;
        db.query(sqluser, function (err, result) {
            if (err) throw err;

            const userResep = parseResult(result)[0];
            const recentUser = req.session.user || null;

            console.log(`Endpoint /resep/${ID_Resep}`);
            res.render("detailResep", { resep, recentUser, userResep, bahanList, langkahList });
        });
    });
};

exports.editResep = (req, res) => {
    const ID_Resep = req.params.ID_Resep;
    const sql = `SELECT * FROM resep WHERE ID_Resep = "${ID_Resep}"`;
    
    db.query(sql, function (err, result) {
        if (err) throw err;

        const resep = result[0]; 
        
        try {
            resep.Bahan = JSON.parse(resep.Bahan || "[]").join(". ");
            resep.Langkah = JSON.parse(resep.Langkah || "[]").join(". ");
        } catch (err) {
            console.error("Error parsing Bahan atau Langkah:", err.message);
            resep.Bahan = "";
            resep.Langkah = "";
        }

        const recentUser = req.session.user;

        console.log(`Endpoint /resep/${ID_Resep}/edit`);
        res.render("editResep", { resep, recentUser });
    });
};

exports.updateResep = (req, res) => {
    const editResep = req.params.ID_Resep;
    if(!editResep) return res.status(404).json({msg:'Resep not found'});

    let fileName = '';
    if(req.files === null) {
        const resep = req.body;
        if (!resep.Bahan || !resep.Langkah) {
            return res.status(400).json({ msg: 'Bahan atau Langkah tidak boleh kosong' });
        }

        const bahanList = JSON.stringify(resep.Bahan.split('.').map((item) => item.trim()));
        const langkahList = JSON.stringify(resep.Langkah.split('.').map((item) => item.trim()));

        const sql = `UPDATE resep set 
                Nama_Resep = ?,
                Kategori = ?,
                Waktu = ?,
                Bahan = ?,
                Langkah = ?
                WHERE ID_Resep = ?
            `;

            const values = [resep.Nama_Resep, resep.Kategori, resep.Waktu, bahanList, langkahList, editResep];

            db.query(sql, values, function (err, result) {
            if (err) throw err;

            console.log("Berhasil mengupdate resep");
            res.redirect(`/resep/${editResep}`);
        });
    } else {
        const file = req.files.Gambar_Resep;
        fileName = file.md5 + file.name;

        const filepath = `./public/images/${req.body.oldGambarResep}`;
        fs.unlinkSync(filepath);

        file.mv(`./public/images/resep/${fileName}`, (err) => {
            if(err) return res.status(522).json({msg: err.message});

            const resep = req.body;
            if (!resep.Bahan || !resep.Langkah) {
                return res.status(400).json({ msg: 'Bahan atau Langkah tidak boleh kosong' });
            }

            const bahanList = JSON.stringify(resep.Bahan.split('.').map((item) => item.trim()));
            const langkahList = JSON.stringify(resep.Langkah.split('.').map((item) => item.trim()));

            const sql = `UPDATE resep set 
                Nama_Resep = ?,
                Kategori = ?,
                Waktu = ?,
                Bahan = ?,
                Langkah = ?,
                Gambar_Resep = ?
                WHERE ID_Resep = ?
            `;

            const values = [resep.Nama_Resep, resep.Kategori, resep.Waktu, bahanList, langkahList, fileName, editResep];

            db.query(sql, values, function (err, result) {
                if (err) throw err;

                console.log("Berhasil mengupdate resep");
                res.redirect(`/resep/${editResep}`);
            });
        });
    }
};

exports.deleteResep = (req, res) => {
    const id = req.params.ID_Resep;

    if (!id) {
        return res.status(404).json({ msg: "Resep tidak ditemukan" });
    }

    const selectSql = `SELECT Gambar_Resep FROM resep WHERE ID_Resep = ?`;
    db.query(selectSql, [id], (err, result) => {
        if (err) {
            console.error("Gagal mengambil data resep:", err.message);
            return res.status(500).json({ msg: "Gagal mengambil data resep" });
        }

        if (result.length === 0) {
            return res.status(404).json({ msg: "Resep tidak ditemukan" });
        }

        const oldGambarResep = result[0].Gambar_Resep;

        if (oldGambarResep) {
            const filepath = (`./public/images/resep/${oldGambarResep}`);
            if (fs.existsSync(filepath)) {
                try {
                    fs.unlinkSync(filepath);
                    console.log("File gambar berhasil dihapus");
                } catch (err) {
                    console.error("Gagal menghapus file gambar:", err.message);
                }
            } else {
                console.warn("File gambar tidak ditemukan, melewati penghapusan");
            }
        }

        const deleteSql = `DELETE FROM resep WHERE ID_Resep = ?`;
        db.query(deleteSql, [id], (err, result) => {
            if (err) {
                console.error("Gagal menghapus data resep:", err.message);
                return res.status(500).json({ msg: "Gagal menghapus data resep" });
            }

            console.log("Berhasil menghapus resep");
            res.redirect("/resep");
        });
    });
};

exports.createResep = (req, res) => {
    if (req.files === null) {
        return res.status(400).json({
            status: 'error',
            message: 'No file uploaded'
        });
    }

    const file = req.files.Gambar_Resep
    const fileName = file.md5 + file.name
    let uploadPath = './public/images/resep/' + fileName;

    file.mv(uploadPath, function (err) {
        if (err) {
            console.error(err);
            return res.status(500).send(err);
        }

        console.log(req.body);
        const resep = req.body;
        const userId = req.user ? req.user.ID_User : req.session.user.ID_User;
        const bahanList = JSON.stringify(resep.Bahan.split('.').map((item) => item.trim()));
        const langkahList = JSON.stringify(resep.Langkah.split('.').map((item) => item.trim()));

        // Insert to databased 
        const sql = `
            INSERT INTO resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        `;

        const values = [userId, fileName, resep.Nama_Resep, resep.Kategori, resep.Waktu, bahanList, langkahList, resep.Deskripsi];

        db.query(sql, values, function (err, result) {
            if (err) {
                console.error("Error saat menyimpan ke database:", err);
                throw err;
            }

            console.log("Berhasil menambahkan 1 record");
            res.redirect("/resep");
        });
    });
};

exports.formSearchResep = (req, res) => {
    if (!req.body.search) {
        const recentUser = req.session.user || null;
        const query = "";
        const resep = [];

        return res.render("searchResep", { recentUser, resep, searchQuery: query }); 
    } else {
        const query = req.body.search;
        const sql = `
            SELECT * FROM resep 
            WHERE Nama_Resep LIKE ?
            OR Kategori LIKE ?
            OR Waktu LIKE ?
        `; 
        db.query(sql, [`%` + query + `%`, `%` + query + `%`, `%` + query + `%`], (err, result) => {
            if (err) return (err.message);

            const resep = parseResult(result);
            const recentUser = req.session.user || null;

            res.render("searchResep", { resep, recentUser, searchQuery: [`${query}`] });
        });
    };
};
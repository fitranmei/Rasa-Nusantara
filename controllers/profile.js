const db = require('../database.js');
const fs = require('fs');
const bcrypt = require('bcryptjs');

function parseResult(result) {
    return Object.values(JSON.parse(JSON.stringify(result)));
}

exports.profileUser = (req, res) => {
    const userProfile = req.params.name;

    const sqluser = `SELECT * FROM users WHERE name = "${userProfile}"`;

    db.query(sqluser, function (err, result) {
        if (err) throw err;

        const user = parseResult(result)[0];

        const sqlresep = `SELECT * FROM resep WHERE ID_User = ${user.ID_User} ORDER BY ID_Resep DESC;`;
        db.query(sqlresep, function (err, result) {
            if (err) throw err;
            
            const resep = parseResult(result);
            console.log(resep);
            console.log(`Endpoint /profile`);

            const recentUser = req.session.user || null;

            res.render('profileUser', { resep, user, recentUser });
        });
    });    
};

exports.formEditUser = (req, res) =>{
    const name = req.params.name;
    const sql = `SELECT * FROM users WHERE name = "${name}"`;
    
    db.query(sql, function (err, result) {
        if (err) throw err;

        const user = parseResult(result)[0];

        console.log("Endpoint /unggah dipanggil");
        res.render("editUser", { user }); 
    });
};

exports.updateUser = (req, res) => {
    const editUser = req.params.name;

    if (!editUser) return res.status(404).json({ msg: 'User not found' });

    const user = req.body;
    let fileName = user.oldGambarUser || 'default.jpg'; 

    if (req.files && req.files.Gambar_User) {
        const file = req.files.Gambar_User;
        fileName = file.md5 + file.name; 

        if (user.oldGambarUser && user.oldGambarUser !== 'default.jpg') {
            const filepath = `./public/images/user/${user.oldGambarUser}`;
            if (fs.existsSync(filepath)) fs.unlinkSync(filepath); 
        }

        file.mv(`./public/images/user/${fileName}`, (err) => {
            if (err) return res.status(522).json({ msg: err.message });
        });
    }

    const sql = `
        UPDATE users 
        SET name = ?, email = ?, Gambar_User = ? 
        WHERE name = ?
    `;
    const values = [user.name, user.email, fileName, editUser];

    db.query(sql, values, (err, result) => {
        if (err) throw err;

        console.log("Berhasil mengupdate user");

        const sqlSelect = `SELECT * FROM users WHERE name = ?`;
        db.query(sqlSelect, [user.name], (err, results) => {
            if (err) {
                console.error("Error saat mengambil data user:", err.message);
                return res.status(500).json({ msg: err.message });
            }

            const updatedUser = results[0];
            req.session.user = {
                Gambar_User: updatedUser.Gambar_User,
                email: updatedUser.email,
                name: updatedUser.name,
                ID_User: updatedUser.ID_User, 
            };

            res.redirect(`/profile/${user.name}`);
        });
    });
};

exports.formEditUserPassword = (req, res) => {
    const name = req.params.name;
    const sql = `SELECT * FROM users WHERE name = "${name}"`;

    db.query(sql, function (err, result) {
        if (err) throw err;

        const user = parseResult(result)[0];
        res.render("editUserPassword", { user });
        console.log("Endpoint /edit-password dipanggil");
    });
};

exports.updateUserPassword = (req, res) => {
    const editUser = req.params.name;
    if (!editUser) return res.status(404).json({ msg: 'User not found' });

    const user = req.body;
    const oldPassword = user.oldPassword;
    const newPassword = user.newPassword;
    const passwordConfirm = user.passwordConfirm;

    if (newPassword !== passwordConfirm) {
        return res.render('editUser', { msg: 'Password confirmation is incorrect', user: req.session.user });
    }

    const sql = `SELECT * FROM users WHERE name = ?`;
    const values = [editUser];

    db.query(sql, values, (err, result) => {
        if (err) throw err;

        if (result.length === 0) {
            return res.render('editUserPassword', { msg: 'User not found', user: req.session.user });
        }

        bcrypt.compare(oldPassword, result[0].password, (err, isMatch) => {
            if (err) throw err;

            if (!isMatch) {
                return res.render('editUserPassword', { msg: 'Old password is incorrect', user: req.session.user });
            }

            const hashedNewPassword = bcrypt.hashSync(newPassword, 10);
            const updateSql = `UPDATE users SET password = ? WHERE name = ? LIMIT 1`;
            const updateValues = [hashedNewPassword, editUser];

            db.query(updateSql, updateValues, (err) => {
                if (err) throw err;

                console.log("Berhasil mengupdate password user");
                res.redirect(`/profile/${editUser}`);
            });
        });
    });
};

exports.deleteUser = (req, res) => {
    const sqluser = `DELETE FROM users WHERE name = ?`
    const values = [req.params.name];

    db.query(sqluser, values, (err, result) => {
        if (err) throw err;
        console.log("Berhasil menghapus user");

        req.session.destroy((err) => {
            if (err) {
                console.error("Error saat menghapus session:", err);
                return res.status(500).send("Internal Server Error");
            }

            console.log("Session user telah dihapus.");
            return res.redirect("/login"); 
        });
    });
};
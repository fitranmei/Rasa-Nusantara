const mysql = require("mysql");

// Membuat koneksi database
const database = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "RasaNusantara",
});

// Koneksi ke database MySQL
database.connect(function (err) {
    if (err) throw err;
    console.log("Berhasil koneksi ke database");
});

module.exports = database;